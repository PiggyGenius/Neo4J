MATCH (p:Person)-[:WORKS]-(c:Company)
RETURN c.name, fiter(x in labels(p) where x <> “Person”), count(*) ORDER BY c.name;
