import ballerina/http;
configurable string GEO_API_URL = ?;
configurable string GEO_API_KEY = ?;
configurable string API_FORMAT = ?;
configurable string GEO_URI_REVERSE = ?;
configurable string GEO_URI_SEARCH = ?;


public http:Client geoapify = check new(string `${GEO_API_URL}`);
public function geoSearch(string key) returns string {
    string finalURL = string `${GEO_URI_SEARCH}`+"text="+key+"&format="+string `${API_FORMAT}`+"&apiKey="+ string `${GEO_API_KEY}`;
    return finalURL;
}

public function coordinateSearch(string lat, string lon) returns string {
    string finalURL = string `${GEO_URI_REVERSE}`+"lat="+lat+"&lon="+lon+"&format="+string `${API_FORMAT}`+"&apiKey="+ string `${GEO_API_KEY}`;
    return finalURL;
}