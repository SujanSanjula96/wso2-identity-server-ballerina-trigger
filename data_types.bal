public type ListenerConfig record {
    string webhookSecret;
};

public type GenericUserOperationEvent record {
    GenericUserOperationData eventData;
    GenericSecurityData securityData;
};

public type GenericUserOperationData record {
    string initiatorType?;
    GenericUserData user;
    GenericTenantData tenant;
    GenericOrganizationData organization;
    GenericUserStoreData userStore;
    string action?;
};

public type GenericUserData record {
    string id;
    GenericClaimData[] claims;
    GenericOrganizationData organization;
    string ref;
};

public type GenericTenantData record {
    string id;
    string name;
};

public type GenericOrganizationData record {
    string id;
    string name;
    string orgHandle;
    int depth;
};

public type GenericUserStoreData record {
    string id;
    string name;
};

public type GenericClaimData record {
    string uri;
    string value;
};

public type GenericSecurityData record {
    string iss;
    string jti;
    int iat;
    string rci;
};

public type GenericPayloadType record {
    string iss;
    string jti;
    int iat;
    string rci;
    json events;
};

public type GenericDataType GenericUserOperationEvent;
