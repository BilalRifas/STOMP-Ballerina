
type Connection object{

    function receive(byte[] |string message , string destination) returns error? {
        match message{
            byte[] msg => { }
            string txt => { }
        }
    }

    public new (StompConfig config){
         createConnection();
    }

    function createConnection();

    // onMessage method will return the message string for the function pointer //receive
    function subscribe ( string destination, string subscriptionId, function (string) returns ( string ) receive)
        returns error? {
                return;
    }

    function acknowledge(string ackId, string messageId) returns error? {
                return;
    }

    function unsubscribe ( string destination, string subscriptionId, function (string) returns ( string ) )
        returns error? {
                return;
    }

    function disconnect ( string receipt, function (string) returns ( string ) )
        returns error? {
                return;
    }

    // The function which gets called when the timer goes off
    private (function( string message ) returns error?) receive;

    function receive(int timeoutInMilliSeconds = 0) returns (Message|error)?;

};
