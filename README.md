# Playing around with EdgeDB

## Installation
* Windows

## Setup
```edgedb project init```

## Schemas
* Compiled to default.esdl
* Nodes/Objects referred to as Types
* Types have properties/links which have data types
* Use keywords and constraints
* Links - single and multi, & link properties
* abstractions - types (haven't tried links)

## Migrations
Steps are always
1.  Create/updated schema
2. ```edgedb migrate create``` to generate migration files
3. If updating, it will prompt confirmations
4. ```edgedb migrate``` to apply migrations to database

## GUI
* ```edgedb ui```
* View schema, data, REPL for queries
* Add data manually in GUI
* __Link properties not visible on the gui__

## Queries
* Insert, update, delete
* __Can't use link properties when inserting links along with an inserted object, so I do it as an update instead__
* __Can't update multiple link properties at time, need to this one by one__
