#!/bin/bash

# Run RMLMapper inline parameters
docker run --rm -v $(pwd):/data rmlio/rmlmapper-java:latest \
    --mappingfile mapping.ttl \
    --outputfile output.ttl \
    --serialization turtle
