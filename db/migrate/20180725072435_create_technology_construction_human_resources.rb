class CreateTechnologyConstructionHumanResources < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_human_resources do |t|
      t.string :name

      t.timestamps
    end
  end
end
