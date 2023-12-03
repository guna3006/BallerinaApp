import BallerinaApp.functions;

public function joinCoordinate(string lat, string lon, int pageNumber, int pagesize) returns map<json>|error {
        string URL = functions:coordinateSearch(lat,lon);
        string addPrefix = check functions:pagination(pageNumber,pagesize);
        string finalURL = URL+addPrefix;
        map<json>|error result = functions:geoapify -> get(finalURL);
        if (result is map<json>){
            return result;
        }else{
            return error(result.message());
        }
}
public function joinGeoSearch(string key, int pageNumber, int pagesize) returns map<json>|error {
        string URL = functions:geoSearch(key);
        string addPrefix = check functions:pagination(pageNumber,pagesize);
        string finalURL = URL+addPrefix;
        map<json>|error result = functions:geoapify -> get(finalURL);
        if (result is map<json>){
            return result;
        }else{
            return error(result.message());
        }
}