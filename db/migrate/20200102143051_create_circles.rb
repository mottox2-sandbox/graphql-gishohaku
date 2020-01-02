class CreateCircles < ActiveRecord::Migration[6.0]
  def change
    create_table :circles do |t|
      t.string :name, null: false
      t.belongs_to :event, null: false, foreign_key: true
      t.belongs_to :circle_category, null: false, foreign_key: true
      t.string :booth, null: false
      t.string :description

      t.timestamps
    end
  end
end
