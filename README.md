# README

Demo Application for GraphQL API.

## Setup
```bash
$ docker-compose up db
$ bin/rails db:create db:migrate db:seed
$ bin/rails s
```

## Tips
```bash
# Create GraphQL type
$ bin/rails g graphql:object Book title:String! description:String cirlce:Circle! price:Int pages:Int event:[Event]

# Check GraphQL schema
$ bin/rails r 'puts GraphqlGishohakuSchema.to_definition'
```
