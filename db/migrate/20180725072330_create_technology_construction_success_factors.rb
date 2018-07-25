class CreateTechnologyConstructionSuccessFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_success_factors do |t|
      t.string :name

      t.timestamps
    end
  end
end
