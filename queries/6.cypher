MATCH (:Person)-[w:WORKS]-(c:Company)-[:LOCATED]-(p:Place)
RETURN w.position, c.name, p.name, avg(w.salary) 
ORDER BY c.name, avg(w.salary) desc;
