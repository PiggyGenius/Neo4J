#!/bin/sh

here=`pwd`
mkdir -p "$here/data"
mkdir -p "$here/logs"
docker run \
    --name neo4j \
    --publish=7474:7474 --publish=7687:7687 \
    --volume="$here/data":/data \
    --volume="$here/logs":/logs \
    --env=NEO4J_AUTH=none \
    neo4j
