class CreateManufacturerImages < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturer_images do |t|
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end