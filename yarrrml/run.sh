#!/bin/bash

# Convert the YARRRML rules to RML
docker run --rm $(pwd):/data rmlio/yarrrml-parser:latest \
    -i /data/mapping.yml \
    -o /data/mapping.rml.ttl

# Run RMLMapper
docker run --rm -v $(pwd):/data rmlio/rmlmapper-java:latest \
    --mappingfile mapping.rml.ttl \
    --outputfile output.ttl \
    --serialization turtle
