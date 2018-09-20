class AddIntellectualPropertyRightToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :intellectual_property_right, :string
  end
end
