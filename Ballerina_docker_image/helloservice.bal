
import ballerina.net.http;
import ballerina.runtime;

service<http> helloWorld {
    resource sayHello (http:Connection conn, http:InRequest req) {
        http:OutResponse res = {};
        res.setStringPayload("Welcome to Kubernetes Training Session!");
        _ = conn.respond(res);
    }

    resource delayHello (http:Connection conn, http:InRequest req) {
        http:OutResponse res = {};
        res.setStringPayload("Welcome to Kubernetes Training Session!, Response delayed by 10s!");
        runtime:sleepCurrentWorker(10000);
        _ = conn.respond(res);
    }

}
