MATCH (a:Person { firstName: 'Jesus’, lastName: ‘Christ’ }),
   (b:Person { firstName: 'Jim’, lastName:‘Morrison’ }), 
   p = shortestPath((a)-[:FRIEND*]-(b))
RETURN length(p);
