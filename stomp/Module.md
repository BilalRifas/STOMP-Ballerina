## Package overview

Stomp Client is used to connect with Brokers

### Stomp Producer

Following example demonstrates a way to publish a message to a specified queue. A Stomp message is created from string, and then it is published to queue 'test-stomp' in remote Stomp specific broker.

```ballerina
import bilal/stomp;

stomp:Sender stompSender = new({
        host: "localhost",
        port: 61613,
        username: "guest",
        password: "guest",
        vhost: "/",
        acceptVersion: "1.1"
    });

public function main() {
        string message = "Hello World From Ballerina";
        string destination = "/queue/test-stomp";
        map<string> customHeaderMap = {};
        var publish = stompSender->send(message,destination,customHeaderMap);
        var disconnect = stompSender->disconnect();
}
```