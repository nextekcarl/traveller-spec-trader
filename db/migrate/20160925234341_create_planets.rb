class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.belongs_to :subsector, foreign_key: true
      t.string :name, null: false
      t.text :description
      t.text :uwp, null: false

      t.timestamps
    end
  end
end
