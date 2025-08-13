docker run `
    --rm -v .:/data `
     rmlio/rmlmapper-java:latest `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle

# With incrased memory size
docker run `
    --rm -v .:/data `
    --entrypoint java `
    rmlio/rmlmapper-java:latest `
    -Xms8g -jar /rmlmapper.jar `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle 
