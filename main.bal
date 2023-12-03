import ballerina/http;
import BallerinaApp.configurations;
import BallerinaApp.api;

service /geolocation on configurations:httpListener{
    # Description.
    #
    # + lat - parameter description  
    # + lon - parameter description
    # + return - return value description
    resource function get coordinate(string lat, string lon) returns map<json>|error?{
            return api:getCoordinate(lat,lon);
        }

    # Description.
    #
    # + key - parameter description
    # + return - return value description
    resource function get wildcardSearch(string key) returns map<json>|error?{
            return api:getAddressSeach(key);
        }


        }
service /paginated on configurations:httpListener{
        # Description.
        #
        # + lat - parameter description  
        # + lon - parameter description  
        # + pageNumber - parameter description  
        # + pageSize - parameter description
        # + return - return value description
        resource function get coordinate(string lat, string lon, int pageNumber, int pageSize) returns map<json>|error?{
            return api:joinCoordinate(lat,lon,pageNumber,pageSize);
        }
        # Description.
        #
        # + key - parameter description  
        # + pageNumber - parameter description  
        # + pageSize - parameter description
        # + return - return value description
        resource function get wildcardSearch(string key, int pageNumber, int pageSize) returns map<json>|error?{
            return api:joinGeoSearch(key,pageNumber,pageSize);
        }

}

service /find on configurations:httpListener{

        # Description.
        #
        # + username - parameter description
        # + return - return value description
        resource function get email(string username) returns json[]|error{
            return api:getReturnEmail(username);
        }
}

 service /database on configurations:httpListener{

        # Description.
        #
        # + staffId - parameter description
        # + return - return value description
        resource function get email/[string staffId]() returns json[] | error{
            return api:getReturnData(staffId);
        }  

        # Description.
        # + return - return value description
        resource function post newdata(http:Request req) returns map<anydata> | error{
            json payload = check req.getJsonPayload();
            return api:addData(payload);
        }  

        # Description.
        # + return - return value description
        resource function get emaillist() returns json[] | error{
            return api:getEmailList();
        }  

        # Description.
        # + return - return value description
        resource function get usernamelist() returns json[] | error{
            return api:getUserList();
        }  
        # Description.
        #
        # + staffid - parameter description
        # + return - return value description
        resource function delete email(string staffid) returns  json[]|error{
            return api:deleteEmail(staffid);
        }  
 }