host="fabmedical-687816.mongo.cosmos.azure.com"
username="fabmedical-687816"
password="GGYMBNT7lZOGcZ67BHJiG9QVIFE7MOIrRb5ddLgaj7BfVcJB8mn5xYSt2VgM5Pc0nBW6kKqAxSOdKbJRQa9Tcg=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
