type StompConfig record{
    string user = "admin";
    string password = "admin";
    string host = "localhost";
    int port = 61616;
    SecureSocket? secureSocket;
    int heartbeats = 0;
    string vhost ="admin";
    string encoding = "UTF-8";
    string acceptedVersions = "1.1","1.2";
};

public type SecureSocket record {
    Store? trustStore,
    Store? keyStore,
    string sslCertAlias,
};

public type Store record {
    string path,
    string password,
};
