#!/bin/sh

if [[ -z "$2" ]]
then
    echo "Usage: ./query.sh <container-id> <cypher-file>"
    echo "Example: ./query.sh fcfb4651a29f populate.cypher"
    exit 1
fi

container=$1
file=$2
docker cp "$file" $container:/query.cypher
docker exec $container sh -c "bin/cypher-shell < /query.cypher"
