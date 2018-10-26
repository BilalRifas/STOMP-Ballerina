
type Connection object{

    function send(byte[] |string message , string destination) returns error? {
        match message{
            byte[] msg => { }
            string txt => { }
        }
    }

    public new (StompConfig config){
        createConnection();
    }

    function createConnection();

    function disconnect ( string receipt, function (string) returns ( string ) )
        returns error? {
            return;
    }

};
