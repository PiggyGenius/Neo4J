MATCH (p:Person)-[:WORKS]-(c:Company)
WHERE length(labels(p)) > 2
WITH c.name as companyName, count(*) as nbMulti
MATCH (pp:Person)-[:WORKS]-(cc:Company)
WHERE cc.name = companyName
RETURN cc.name, (nbMulti*1.0)/count(*) as percentage
ORDER  BY percentage DESC;
