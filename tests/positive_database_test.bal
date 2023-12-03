import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function databaseEmailStaffid() returns error? {
    json readLines = check io:fileReadJson(databaseEmailStaffidFILE);
    http:Response response = check testClient -> get(databaseEmailStaffidURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}



@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function databaseNewdata() returns error? {
    json readLinesReq = check io:fileReadJson(databaseNewdataReqFILE);
    json readLinesRes = check io:fileReadJson(databaseNewdataResFILE);
    http:Response response = check testClient -> post(databaseNewdataURI,readLinesReq);
    test:assertEquals(response.statusCode, http:STATUS_CREATED);
    test:assertEquals(response.getJsonPayload(), readLinesRes);
}

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function databaseGetEmailList() returns error? {
    json readLines = check io:fileReadJson(databaseGetEmailListFILE);
    http:Response response = check testClient -> get(databaseGetEmailListURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}


@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function databaseGetUserList() returns error? {
    json readLines = check io:fileReadJson(databaseGetUserListFILE);
    http:Response response = check testClient -> get(databaseGetUserListURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}
@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function databaseDelete() returns error? {
    json readLines = check io:fileReadJson(databaseDeleteFILE);
    http:Response response = check testClient -> delete(databaseDeleteURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}

