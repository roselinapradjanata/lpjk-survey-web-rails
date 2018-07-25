class CreateConstructionProductTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :construction_product_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
