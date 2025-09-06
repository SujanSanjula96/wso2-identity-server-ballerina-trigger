public type UserOperationService service object {
    remote function onCreateUser(GenericUserOperationEvent event) returns error?;
};

public type GenericServiceType UserOperationService;
