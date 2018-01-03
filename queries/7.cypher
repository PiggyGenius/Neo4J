MATCH (:Person)-[w:WORKS]-(c:Company)
RETURN w.position, c.name, avg(w.salary) ORBER BY c.name, avg(w.salary) desc;
