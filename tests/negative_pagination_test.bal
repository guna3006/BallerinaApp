import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function paginatedCoordinateTestNegative() returns error? {
    json readLines = check io:fileReadJson(NpaginatedGeolocationCoordinateFILE);
    http:Response response = check testClient -> get(NpaginatedGeolocationCoordinateURI);
    test:assertEquals(response.statusCode, http:STATUS_BAD_REQUEST);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function paginatedWildcardSearchTestNegative() returns error? {
    json readLines = check io:fileReadJson(NpaginatedWildcardSearchFILE);
    http:Response response = check testClient -> get(NpaginatedWildcardSearchURI);
    test:assertEquals(response.statusCode, http:STATUS_BAD_REQUEST);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}