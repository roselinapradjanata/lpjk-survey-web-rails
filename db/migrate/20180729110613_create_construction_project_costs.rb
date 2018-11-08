class CreateConstructionProjectCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :construction_project_costs do |t|
      t.string :name

      t.timestamps
    end
  end
end
