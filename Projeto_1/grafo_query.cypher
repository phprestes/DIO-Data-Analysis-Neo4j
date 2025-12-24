CREATE
(u:User {
  name: "phprestes"
}),

(p:Productions:Movie {
  name: "Pulp Fiction",
  budget: 8.0,
  score_rating: 4.2,
  runtime_hours: 1.9,
  year: 1994,

  box_office: 213.928762
}),

(g1:Genre {
  name: "Comedy"
}),

(g2:Genre {
  name: "Thriller"
}),

(g3:Genre {
  name: "Crime"
}),

(actor:Person:Actor {
  name: "John Travolta",
  age: 71,
  nationality: "american"
}),

(director:Person:Director {
  name: "Quentin Tarantino",
  age: 62,
  nationality: "american"
}),

(u)-[:WATCHED { rating: 4.5 }]->(p),
(p)-[:IN_GENRE]->(g1), (p)-[:IN_GENRE]->(g2), (p)-[:IN_GENRE]->(g3),
(actor)-[:ACTED_IN { role: "Vincent Vega" }]->(p),
(director)-[:DIRECTED]->(p);