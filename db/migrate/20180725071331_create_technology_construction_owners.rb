class CreateTechnologyConstructionOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_owners do |t|
      t.string :name

      t.timestamps
    end
  end
end
