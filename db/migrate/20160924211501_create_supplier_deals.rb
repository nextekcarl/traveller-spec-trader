class CreateSupplierDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :supplier_deals do |t|
      t.text :deals_table

      t.timestamps
    end
  end
end
