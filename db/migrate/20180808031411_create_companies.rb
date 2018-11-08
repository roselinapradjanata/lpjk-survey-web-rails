class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :business_type

      t.timestamps
    end
  end
end
