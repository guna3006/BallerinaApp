configurable string INVALID_INT_MSG = ?;
configurable string INVALID_STRING_MSG = ?;

public function invalidInt() returns error{
    return error(INVALID_INT_MSG);
}

public function invalidString() returns error{
    return error(INVALID_STRING_MSG);
}
