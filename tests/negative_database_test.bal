import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function databaseEmailStaffidNegative() returns error? {
    json readLines = check io:fileReadJson(NdatabaseEmailStaffidFILE);
    http:Response response = check testClient -> get(NdatabaseEmailStaffidURI);
    test:assertEquals(response.statusCode, http:STATUS_INTERNAL_SERVER_ERROR);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}


@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function databaseNewdataNegative() returns error? {
    json readLinesReq = check io:fileReadJson(NdatabaseNewdataReqFILE);
    json readLinesRes = check io:fileReadLines(NdatabaseNewdataResFILE);
    http:Response response = check testClient -> post(NdatabaseNewdataURI,readLinesReq);
    test:assertEquals(response.statusCode, http:STATUS_INTERNAL_SERVER_ERROR);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLinesRes);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function databaseGetEmailListNegative() returns error? {
    json readLines = check io:fileReadJson(NdatabaseGetEmailListFILE);
    http:Response response = check testClient -> get(NdatabaseGetEmailListURI);
    test:assertEquals(response.statusCode, http:STATUS_NOT_FOUND);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}


@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function databaseGetUserListNegative() returns error? {
    json readLines = check io:fileReadJson(NdatabaseGetUserListFILE);
    http:Response response = check testClient -> get(NdatabaseGetUserListURI);
    test:assertEquals(response.statusCode, http:STATUS_NOT_FOUND);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}
@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function databaseDeleteNegative() returns error? {
    json readLines = check io:fileReadJson(NdatabaseDeleteFILE);
    http:Response response = check testClient -> delete(NdatabaseDeleteURI);
    test:assertEquals(response.statusCode, http:STATUS_BAD_REQUEST);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}

