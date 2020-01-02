# README

Demo Application for GraphQL API.

## Tasks
- [x] Frontend application with React
- [ ] Authentication
- [ ] Query args

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

## References
- [「GraphQL」徹底入門 ─ RESTとの比較、API・フロント双方の実装から学ぶ - エンジニアHub｜若手Webエンジニアのキャリアを考える！](https://employment.en-japan.com/engineerhub/entry/2018/12/26/103000#GraphQL-API%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%81%A6%E3%81%BF%E3%82%8B)