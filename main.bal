import ballerina/log;

listener Listener Asgardeo = new (listenerConfig = {
    webhookSecret: "abcdef"
}, listenOn = 8090);

service UserOperationService on Asgardeo {

    remote function onCreateUser(GenericUserOperationEvent event) returns error? {
        log:printInfo("User created event received");
        log:printInfo("Initiator type: " + event.eventData.user.id);
    }
}