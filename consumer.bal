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

//type MessageDetails record {
//    string subscriptionId;
//    string messageId;
//    string contentType;
//    string destination;
//};

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

    # onMessage method will return the message string for the function pointer //receive
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

function (int, string) returns (float) f = getIt();

public function main(string... args) {
    StompConfig config = {};
    stomp:Connection conn = new (config);
    //Message message = new ();


    match (conn.subscribe("queue/foo","sub1") )  {
        () => { }
        error e => { log:printError("Error occurred while sending message", err = e); }
    }


    conn.close();
}

