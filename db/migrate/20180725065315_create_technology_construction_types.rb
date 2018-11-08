class CreateTechnologyConstructionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
