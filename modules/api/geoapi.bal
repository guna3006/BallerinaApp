import BallerinaApp.functions;

public function getCoordinate(string lat, string lon) returns map<json>|error?{
    map<json>|error result = check functions:geoapify -> get(functions:coordinateSearch(lat,lon));
        if (result is map<json>){
            return result;
        }else{
            return error(result.message());
        }

    }

public function getAddressSeach(string key) returns map<json>|error?{
    map<json>|error result = check functions:geoapify -> get(functions:geoSearch(key));
        if (result is map<json>){
            return result;
        }else{
            return error(result.message());
        }

    }