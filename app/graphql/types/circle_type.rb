module Types
  class CircleType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :booth, String, null: false
    field :books, [Types::BookType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
