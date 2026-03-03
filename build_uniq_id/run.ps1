java -jar ..\rmlmapper-8.1.0-r380-all.jar `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle

docker run `
    --rm -v .:/data `
     rmlio/rmlmapper-java:latest `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle

# With increased memory size
java -Xms8g -jar ..\rmlmapper-8.1.0-r380-all.jar `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle

docker run `
    --rm -v .:/data `
    --entrypoint java `
    rmlio/rmlmapper-java:latest `
    -Xms8g -jar /rmlmapper.jar `
    --mappingfile mapping.ttl `
    --outputfile output.ttl `
    --serialization turtle 
