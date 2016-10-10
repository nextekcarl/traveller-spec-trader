class AddMorallyAmbiguousBooleanAndPlanetIdToSupplierDeals < ActiveRecord::Migration[5.0]
  def change
    add_column :supplier_deals, :morally_ambiguous, :boolean, default: false
    add_reference :supplier_deals, :planet, foreign_key: true
  end
end
