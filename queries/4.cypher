MATCH (p:Person)-[:WORKS]-(c:Company)
RETURN c.name, filter(x in labels(p) where x <> "Person"), count(*) ORDER BY c.name;
