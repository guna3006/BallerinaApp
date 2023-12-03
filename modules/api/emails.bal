import ballerina/sql;
import BallerinaApp.functions;

public function getReturnEmail(string username) returns json[] | error {
        string | error emailReturn = functions:FindEmailAddress(username);
        boolean | error emailMatch = functions:emailStarts(check emailReturn,username);
        string | error userName = check functions:getEmailUsername(check emailReturn);

        if (emailMatch == true){
            return functions:genarateJSON(check emailReturn,emailMatch,check userName);
        }else{
            return error(check emailReturn);
        }
    }

public function getReturnData(string staffId) returns json[] |error {
        functions:dbReturnVar|error result = check functions:GetDataItemById(staffId);
        json[]|error resultJ = [check result];

        if (resultJ is error ){
            return error(resultJ.message());
        }else{
            return resultJ;
        }

    }

public function addData(json payload) returns functions:dbReturnVar|error {
        functions:dbRequestVar|error entryDataMap = payload.cloneWithType(functions:dbRequestVar);
        if (entryDataMap is error ){
            return error(entryDataMap.message());
           } else {
            any|error address = entryDataMap.get("address");
            any|error staffId = entryDataMap.get("staff_id");
            if (address is error) && (staffId is error){
                return error(address.message());
            }else {
               functions:dbReturnVar|error result = functions:AddDataItem(entryDataMap.get("address").toString(),entryDataMap.get("staff_id").toString());
                    if (result is error ){
                        return error(result.message().toJsonString());
                    }else{
                        return result;
                    }           
            }
        }
    }

public function getEmailList() returns json[] | error {
        string | error result = functions:GetEmailList();
        json [] | error emaiList = [check result];
        if (emaiList is error) {
            return error(emaiList.message());
        } else {
            return emaiList;
        }

    }


public function getUserList() returns json[] | error {
        string[] | error result = functions:getAllUserList();
        json[] | error emaiList = result;
        if (emaiList is error) {
            return error(emaiList.message());
        } else {
            return emaiList;
        }

    }

public function deleteEmail(string staffId) returns json[]|error {
        json|sql:Error? result = check functions:DeleteRecord(staffId);
        json[] resultJ= [check result];

        if (result is error){
            return error(result.message());
            }else{
            return resultJ;
        }
    }