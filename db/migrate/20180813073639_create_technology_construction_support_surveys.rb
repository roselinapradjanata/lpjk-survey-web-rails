class CreateTechnologyConstructionSupportSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :technology_construction_support_surveys do |t|
      t.references :survey, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
