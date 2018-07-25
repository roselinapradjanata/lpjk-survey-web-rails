class CreateTechnologyConstructionInovationCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_inovation_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
