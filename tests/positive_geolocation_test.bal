import ballerina/test;
import ballerina/http;
import ballerina/io;


@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function geolocationCoordinateTest() returns error? {
    json readLines = check io:fileReadJson(geolocationCoordinateFILE);
    http:Response response = check testClient -> get(geolocationCoordinateURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}

@test:Config {
    before: beforeFunc,
    after: afterFunc
}
public function geolocationWildcardSearchTest() returns error? {
    json readLines = check io:fileReadJson(wildcardSearchFILE);
    http:Response response = check testClient -> get(wildcardSearchURI);
    test:assertEquals(response.statusCode, http:STATUS_OK);
    test:assertEquals(response.getJsonPayload(), readLines);
}