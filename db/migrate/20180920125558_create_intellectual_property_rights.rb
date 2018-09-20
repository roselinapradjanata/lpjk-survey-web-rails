class CreateIntellectualPropertyRights < ActiveRecord::Migration[5.2]
  def change
    create_table :intellectual_property_rights do |t|
      t.string :name

      t.timestamps
    end
  end
end
