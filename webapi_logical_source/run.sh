#!/bin/bash
# Run RMLMapper with inline parameters

java -jar ../rmlmapper-8.1.0-r380-all.jar \
    --mappingfile mapping_simple.ttl \
    --outputfile output.ttl \
    --serialization turtle

java -jar ../rmlmapper-8.1.0-r380-all.jar \
    --mappingfile mapping_wot.ttl \
    --outputfile output.ttl \
    --serialization turtle


docker run --rm -v $(pwd):/data rmlio/rmlmapper-java:latest \
    --mappingfile mapping_simple.ttl \
    --outputfile output.ttl \
    --serialization turtle

docker run --rm -v $(pwd):/data rmlio/rmlmapper-java:latest \
    --mappingfile mapping_wot.ttl \
    --outputfile output.ttl \
    --serialization turtle
