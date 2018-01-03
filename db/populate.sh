#!/bin/sh

container=$1
docker cp populate.cypher $container:/populate.cypher
docker exec $container sh -c "bin/cypher-shell < /populate.cypher"
