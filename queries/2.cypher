MATCH (n:Person)-[:WORKS]-() WHERE n.born < 1980
RETURN labels(n), count(*);
