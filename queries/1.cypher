MATCH (a:Person { firstName: "Marie", lastName: "Lariviere" }),
   (b:Person { firstName: "Daniela", lastName: "Muller" }), 
   p = shortestPath((a)-[:FRIEND*]-(b))
RETURN length(p);
