class CreateTechnologyConstructionSupplyChains < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_supply_chains do |t|
      t.string :name

      t.timestamps
    end
  end
end
