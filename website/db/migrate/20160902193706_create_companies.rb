class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table 	:companies do |t|
      t.string 		:name, limit: 64, null: false
      t.string 		:phone, limit: 10, null: false
      t.string 		:address, null: false
      t.text 			:email, null: false

      t.timestamps null: false
    end
  end
end
