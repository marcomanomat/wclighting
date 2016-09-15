class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer :company_id
      t.integer :manufacturer_id
      
      t.timestamps
    end
  end
end
