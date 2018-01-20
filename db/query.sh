#!/bin/sh

if [ -z "$1" ]
then
    echo "Usage: ./query.sh <cypher-file>"
    echo "Example: ./query.sh populate.cypher"
    exit 1
fi

file=$1
docker cp "$file" neo4j:/query.cypher
docker exec neo4j sh -c "bin/cypher-shell < /query.cypher"
