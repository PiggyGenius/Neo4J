# Neo4j

## How to insert data
	neo4j stop
	neo4j-shell -path /path-to-neo4j/data/data/databases/graph.db -c < data.cypher
	neo4j start

WARNING: Running these commands will remove any previously inserted data.
