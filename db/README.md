**The scripts work with Docker.**

# Start database

The database will be created if it does not exist.

```
./run.sh
```

# Populate database

```
# Get the container id
docker ps | grep neo4j
# Example:
# 7691bbb048dd        neo4j               "/docker-entrypoin..."   5 minutes ago       Up 5 minutes        0.0.0.0:7474->7474/tcp, 7473/tcp, 0.0.0.0:7687->7687/tcp   youthful_engelbart

./query.sh <container-id> populate.cypher
# Example: 
# ./populate.sh 7691bbb048dd populate.cypher
```
