# Neo4j

* `db/` contains the data and the scripts to create and populate the database.
* `queries/` contains the queries as cypher files. See below for more details.

## Install

See `db/README.md`.

## Queries

Run a query with:

```
cd db
./query.sh ../queries/<fname>.cypher
```

For example to run the first query:
```
cd db
./query.sh ../queries/1.cypher
```

### \#1

Degree of proximity between two persons.

### \#2

Number of persons by nationality that are working and were born after a given year.

### \#3

Maximum degree of proximity in our social network.

### \#4

Number of persons of a given nationality that work for a company.

### \#5

Proportion of persons working in a company that have more than one nationality.

### \#6

Mean salary of every kind of position for all the companies in our social network.
