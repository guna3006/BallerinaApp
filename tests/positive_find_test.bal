import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function findEmailTest() returns error? {
    json readLines = check io:fileReadJson(findEmailFILE);
    http:Response response = check testClient -> get(findEmailURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}
