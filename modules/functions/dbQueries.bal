import ballerina/sql;
import BallerinaApp.configurations;

public function GetDataItemById(string staffId) returns dbReturnVar|error {

    sql:ParameterizedQuery GetDataItemByIdQuery = `SELECT * FROM emails WHERE staff_id = ${staffId}`;
    
    stream<record { }, sql:Error?> resultStream = configurations:mysqlClient -> query(GetDataItemByIdQuery);

    record {|
        record { } value;
    |}|error? result = resultStream.next();
    if (result is record {|
                      record { } value;
                  |}) {
        dbReturnVar addedItem = {
            address: <string>result.value["address"],
            staffId: <string>result.value["staff_id"]
        };
        return addedItem;

    } else if (result is error) {
        return error(result.message());
    } else {
        return error("Retreive failed");
    }
}


public function GetEmailList() returns string|error {
    sql:ParameterizedQuery GetAllEmail = `SELECT GROUP_CONCAT(address) as address FROM emails`;
    string|sql:Error result = configurations:mysqlClient -> queryRow(GetAllEmail);

    if (result is sql:Error) {
        return error(result.message());
    } else {
        return result;
    }
}

public function FindEmailAddress(string username) returns string|sql:Error {
    sql:ParameterizedQuery FindEmail = `SELECT address FROM emails WHERE address LIKE CONCAT(${username}, '%') `;
    string|sql:Error result = configurations:mysqlClient -> queryRow(FindEmail);

    if (result is sql:Error) {
        return error(result.message());
    } else {
        return result;
    }
}

public function AddDataItem(string address, string staffId) returns dbReturnVar|error {
    sql:ParameterizedQuery InsertNewDataItemQuery = `INSERT INTO emails (address,staff_id) VALUES(${address},${staffId})`;
    sql:ExecutionResult|sql:Error result = configurations:mysqlClient -> execute(InsertNewDataItemQuery);

    if (result is sql:Error) {
        return error(result.message());
    } else {
        return GetDataItemById(staffId);
    }

}


public function DeleteRecord(string staffId) returns json|error {
    sql:ParameterizedQuery deleteStatement = `DELETE FROM emails WHERE staff_id = ${staffId};`;
    sql:ExecutionResult|sql:Error result = configurations:mysqlClient -> execute(deleteStatement);


    if (result is sql:Error) {
        return error(result.message());
    } else {
        return  ("Record "+staffId+" successfull deleted").toJson();
    }

}