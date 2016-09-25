class CreateSubsectors < ActiveRecord::Migration[5.0]
  def change
    create_table :subsectors do |t|
      t.string :name, null: false
      t.text :description
      t.text :uwp, null: false

      t.timestamps
    end
  end
end
