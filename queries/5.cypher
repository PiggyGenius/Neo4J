MATCH (n:Person)
WHERE length(labels(n)) > 2
RETURN DISTINCT filter(x IN labels(n) where x <> "Person");

MATCH (n:Person)
WHERE length(labels(n)) > 2 WITH COLLECT(DISTINCT filter(x IN labels(n) where x <> "Person")) AS nationalities
RETURN nationalities;

MATCH (n:Person)-[:LIVES]->(p:Place)
WHERE length(labels(n)) > 2 
WITH COLLECT(DISTINCT filter(x IN labels(n) where x <> "Person")) AS nationalities
RETURN nationalities;
