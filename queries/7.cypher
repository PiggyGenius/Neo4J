MATCH (:Person)-[w:WORKS]-(c:Company)
RETURN w.position, c.name, avg(w.salary) ORDER BY c.name, avg(w.salary) desc;
