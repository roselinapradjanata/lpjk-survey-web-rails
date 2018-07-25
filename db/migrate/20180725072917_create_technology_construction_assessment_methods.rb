class CreateTechnologyConstructionAssessmentMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_assessment_methods do |t|
      t.string :name

      t.timestamps
    end
  end
end
