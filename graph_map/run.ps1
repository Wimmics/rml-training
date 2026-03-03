# Run RMLMapper with inline parameters

java -jar ..\rmlmapper-8.1.0-r380-all.jar `
    --mappingfile mapping.ttl `
    --outputfile output.trig `
    --serialization trig

docker run --rm -v .:/data rmlio/rmlmapper-java:latest `
    --mappingfile mapping.ttl `
    --outputfile output.trig `
    --serialization trig
