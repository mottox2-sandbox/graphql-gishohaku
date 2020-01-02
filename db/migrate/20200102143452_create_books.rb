class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :circle, null: false, foreign_key: true
      t.belongs_to :event, null: false, foreign_key: true
      t.string :description
      t.integer :price
      t.integer :pages

      t.timestamps
    end
  end
end
