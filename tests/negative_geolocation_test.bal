import ballerina/test;
import ballerina/http;
import ballerina/io;


@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function geolocationCoordinateTestNegative() returns error? {
    json readLines = check io:fileReadJson(NgeolocationCoordinateFILE);
    http:Response response = check testClient -> get(NgeolocationCoordinateURI);
    test:assertEquals(response.statusCode, http:STATUS_BAD_REQUEST);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function geolocationWildcardSearchTestNegative() returns error? {
    json readLines = check io:fileReadJson(NwildcardSearchFILE);
    http:Response response = check testClient -> get(NwildcardSearchURI);
    test:assertEquals(response.statusCode, http:STATUS_BAD_REQUEST);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}