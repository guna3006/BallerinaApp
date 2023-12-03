import ballerina/http;
import ballerina/io;

public configurable string TEST_CLIENT = ?;
public configurable string geolocationCoordinateURI = ?;
public configurable string geolocationCoordinateFILE = ?;
public configurable string wildcardSearchURI = ?;
public configurable string wildcardSearchFILE = ?;
public configurable string paginatedWildcardSearchURI = ?;
public configurable string paginatedWildcardSearchFILE = ?;
public configurable string paginatedGeolocationCoordinateURI = ?;
public configurable string paginatedGeolocationCoordinateFILE = ?;
public configurable string findEmailURI = ?;
public configurable string findEmailFILE = ?;
public configurable string databaseEmailStaffidURI = ?;
public configurable string databaseEmailStaffidFILE = ?;
public configurable string databaseNewdataURI = ?;
public configurable string databaseNewdataReqFILE = ?;
public configurable string databaseNewdataResFILE = ?;
public configurable string databaseGetEmailListFILE = ?;
public configurable string databaseGetEmailListURI = ?;
public configurable string databaseDeleteFILE = ?;
public configurable string databaseDeleteURI = ?;
public configurable string databaseGetUserListFILE = ?;
public configurable string databaseGetUserListURI = ?;

public configurable string NgeolocationCoordinateURI = ?;
public configurable string NgeolocationCoordinateFILE = ?;
public configurable string NwildcardSearchURI = ?;
public configurable string NwildcardSearchFILE = ?;
public configurable string NpaginatedWildcardSearchURI = ?;
public configurable string NpaginatedWildcardSearchFILE = ?;
public configurable string NpaginatedGeolocationCoordinateURI = ?;
public configurable string NpaginatedGeolocationCoordinateFILE = ?;
public configurable string NfindEmailURI = ?;
public configurable string NfindEmailFILE = ?;
public configurable string NdatabaseEmailStaffidURI = ?;
public configurable string NdatabaseEmailStaffidFILE = ?;
public configurable string NdatabaseNewdataURI = ?;
public configurable string NdatabaseNewdataReqFILE = ?;
public configurable string NdatabaseNewdataResFILE = ?;
public configurable string NdatabaseGetEmailListFILE = ?;
public configurable string NdatabaseGetEmailListURI = ?;
public configurable string NdatabaseDeleteFILE = ?;
public configurable string NdatabaseDeleteURI = ?;
public configurable string NdatabaseGetUserListFILE = ?;
public configurable string NdatabaseGetUserListURI = ?;


http:Client testClient = check new (TEST_CLIENT);

public function beforeFunc() {
    io:println("Positive - Unit test started!");
}

public function afterFunc() {
    io:println("Positive - Unit test ended!");
}

public function beforeFuncN() {
    io:println("Negative - Unit test started!");
}

public function afterFuncN() {
    io:println("Negative - Unit test ended!");
}

