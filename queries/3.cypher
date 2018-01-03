MATCH (a:Person),(b:Person), p = shortestPath((a)-[:FRIEND*]-(b))
WHERE a <> b
RETURN max(length(p)), p ORDER BY length(p) DESC LIMIT 1;
