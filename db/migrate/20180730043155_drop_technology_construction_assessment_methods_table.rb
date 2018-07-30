class DropTechnologyConstructionAssessmentMethodsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :technology_construction_assessment_methods
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
