module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :cirlce, Types::CircleType, null: false
    field :price, Integer, null: true
    field :pages, Integer, null: true
  end
end
