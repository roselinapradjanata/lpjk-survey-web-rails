class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.references :company, foreign_key: true
      t.text :construction_product_type, array: true, default: []
      t.string :technology_construction_applied
      t.string :construction_project
      t.date :construction_project_date
      t.string :construction_project_cost
      t.text :technology_construction_stage, array: true, default: []
      t.string :technology_construction_type
      t.string :technology_construction_origin
      t.string :technology_construction_owner
      t.string :technology_construction_category
      t.string :technology_construction_primary_type
      t.string :technology_construction_benefit
      t.string :technology_construction_all_benefits
      t.text :technology_construction_cost, array: true, default: []
      t.string :technology_construction_success_factor
      t.string :technology_construction_all_success_factors
      t.string :technology_construction_obstacle
      t.string :technology_construction_all_obstacles
      t.text :technology_construction_human_resource, array: true, default: []
      t.text :technology_construction_support, array: true, default: []
      t.string :technology_construction_supply_chain
      t.string :technology_construction_supply_chain_origin
      t.string :technology_construction_innovation_origin
      t.string :technology_construction_innovation_category
      t.string :technology_construction_assessment
      t.string :technology_construction_level

      t.timestamps
    end
  end
end
