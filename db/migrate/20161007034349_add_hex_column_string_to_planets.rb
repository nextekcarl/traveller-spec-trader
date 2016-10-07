class AddHexColumnStringToPlanets < ActiveRecord::Migration[5.0]
  def change
    add_column :planets, :hex, :string
    add_index :planets, :hex

    Planet.reset_column_information
    Planet.all.each {|planet| planet.save!}
  end
end
