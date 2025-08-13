# Run RMLMapper inline parameters
docker run --rm -v .:/data rmlio/rmlmapper-java:latest `
    --mappingfile mapping_simple.ttl `
    --outputfile output.ttl `
    --serialization turtle

docker run --rm -v .:/data rmlio/rmlmapper-java:latest `
    --mappingfile mapping_wot.ttl `
    --outputfile output.ttl `
    --serialization turtle
