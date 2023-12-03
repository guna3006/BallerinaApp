import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFuncN,
    after: afterFuncN
}
public function findEmailTestNegative() returns error? {
    json readLines = check io:fileReadJson(NfindEmailFILE);
    http:Response response = check testClient -> get(NfindEmailURI);
    test:assertEquals(response.statusCode, http:STATUS_INTERNAL_SERVER_ERROR);
    json errorPayload = check response.getJsonPayload();
    test:assertNotExactEquals(response.getJsonPayload(),readLines);
    test:assertEquals(response.getJsonPayload(), errorPayload);
}
