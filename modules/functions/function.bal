import ballerina/lang.regexp;

public function emailStarts(string emailList, string username) returns boolean{
    boolean result = emailList.startsWith(username);
    return result;
}

public function getAllUserList() returns string[] | error{
    string emailList = check(GetEmailList());
    string[] emails = re `,`.split(emailList);
    string[] usernames = [];
    foreach string email in emails {
        if validEmailPattern.isFullMatch(email) {
            regexp:Groups? emailGroups = validEmailPattern.findGroups(email);
            if emailGroups is regexp:Groups {
                usernames.push((<regexp:Span>emailGroups[1]).substring());
            }
        }
    }
        return usernames;
}

public function getEmailUsername(string emailAddress) returns string | error {
    int? atIndex =  emailAddress.indexOf("@");
    
    if (atIndex > 0) {
        return emailAddress.substring(0, atIndex ?: 0);
    } else {
        return invalidString();
    }
}

public function pagination(int pageNumber, int pagesize) returns string | error {
    int? offset = (pageNumber - 1) * pagesize;
    string offSet = offset.toString();
    string pageSize = pagesize.toString();
    string paginationPrefix = "&offset="+offSet+"&limit="+pageSize;
    if (offset is int){
        return paginationPrefix;
    }else{
        return invalidInt();
    }

}

public function genarateJSON(string emailReturn, boolean emailMatch, string userName) returns json[] | error{
    return [{"email match": emailMatch, "email address": emailReturn, "email username": userName}];
}



