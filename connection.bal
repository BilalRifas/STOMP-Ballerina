type Connection object{

    public new (StompConfig config){
        createConnection();
    }

    function createConnection();

    function disconnect ( string receipt, function (string) returns ( string ) )
        returns error? {
            return;
    }

};
