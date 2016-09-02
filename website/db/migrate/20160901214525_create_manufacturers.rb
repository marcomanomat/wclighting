class CreateManufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
    	t.string :name
    	t.text :profile
    	t.integer :product_type_id
			# logo
			# pictures   	
      t.timestamps
    end
  end
end
