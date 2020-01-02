class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :slug, null: false, unique: true, index: true
      t.date :held_on, null: false
    end
  end
end
