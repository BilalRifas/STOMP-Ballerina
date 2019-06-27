
# **Ballerina Stomp Client**

Ballerina Stomp Client Endpoint is used to connect Ballerina with STOMP specific Brokers. With this Stomp Client, Ballerina can act as Stomp Producer.
This connector is compatible with Stomp 1.2 version.


## Compatibility

| Ballerina Language Version  | Stomp Protocol Version   | 
|:---------------------------:|:------------------------:|
| 0.991.0                     | 1.2                      |

## Getting started

> Refer the [Getting Started](https://ballerina.io/learn/getting-started/) guide to download and install Ballerina.

## Ballerina as a Stomp Producer

Following example demonstrates a way to publish a message to a specified queue. A Stomp message is created from string, and then it is published to queue 'test-stomp' in remote Stomp specific broker.

```ballerina
import wso2/stomp;

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
````

For more Stomp Connector Ballerina configurations please refer to the samples directory.
