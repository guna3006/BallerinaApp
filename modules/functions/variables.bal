public type dbReturnVar record {|
    string address;
    string staffId;
|};

public type dbRequestVar record {|
    string address;
    string staff_id;
|};

public type MapAnyData map<anydata>;

public string:RegExp validEmailPattern = re `([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})`;