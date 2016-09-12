class CreateManufacturersProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers_product_types do |t|
      t.references :product_type
      t.references :manufacturer
    end
  end
end
