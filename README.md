# Neo4j

* `db/` contains the data and the scripts to create and populate the database.
* `queries/` contains the queries as cypher files. See below for more details.

## Install

See `db/README.md`.

## Data

TODO

## Indexes

TODO

## Queries

Run a query with:

```
cd db
# Get container id
docker ps | grep neo4j

./query.sh <container-id> ../queries/<fname>.cypher
# Example:
# ./query.sh 5b3e3f5b80b2 ../queries/1.cypher
```

### \#1

Degré de connexion entre deux personnes

### \#2

Nombre de personnes par nationalité qui travaillent au dessus d’un âge.

### \#3

Degré de connexion le plus lointain entre deux personnes.

### \#4

Nombre de personnes avec une nationalité dans une entreprise (à complexifier).

### \#5

Pour chaque multi-nationalité, trouver le lieu d’habitation le plus commun, puis
le niveau de salaire pour chaque poste (des multi-nationaux) et retourner ceux
qui ont un salaire supérieur (ou inférieur) aux nationaux avec le salaire et l'âge 
moyen et ajouter à cela le salaire moyen pour le poste dans chacun des lieux les 
plus communs de ses nationalités.

### \#6

Proportion de multi-nationaux par entreprise

### \#7

Salaire moyen pour chaque poste dans une entreprise
