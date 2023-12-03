import ballerina/test;
import ballerina/http;
import ballerina/io;

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function paginatedCoordinateTest() returns error? {
    json readLines = check io:fileReadJson(paginatedGeolocationCoordinateFILE);
    http:Response response = check testClient -> get(paginatedGeolocationCoordinateURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function paginatedWildcardSearchTest() returns error? {
    json readLines = check io:fileReadJson(paginatedWildcardSearchFILE);
    http:Response response = check testClient -> get(paginatedWildcardSearchURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}