import ballerina/io;
import ballerina/log;
import ballerina/stomp;

type StompConfig record{
    string user = "admin";
    string password = "admin";
    string host = "localhost";
    int port = 61616;
    SecureSocket? secureSocket;
    int heartbeats = 0;
    string vhost ="admin";
    string encoding = "UTF-8";
};

type Connection object{

    function send(byte[] |string message , string destination) returns error? {
        match message{
            byte[] msg => { }
            string txt => { }
        }
    }

    public new (StompConfig config){
    }

    function close(){
        //code
    }

    //onMessage method will return the message string for the function pointer //receive
    function subscribe ( string destination, string subscriptionId, function (string) returns ( string ) receive)
                returns error? {
        //code
    }

    function acknowledge(string ackId, string messageId) returns error? {
        return;
    }

    // The function which gets called when the timer goes off
    private (function( string message ) returns error?) receive;

};

type Message object{
    string msg;


};

public function main(string... args) {
    StompConfig config = {};
    stomp:Connection conn = new (config);

    match (conn.send("text message" , "queue/foo") )  {
        () => { }
        error e => { log:printError("Error occurred while sending message", err = e); }
    }


    conn.close();
}

