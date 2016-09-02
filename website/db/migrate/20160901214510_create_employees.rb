class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
    	t.string 	:first_name, limit: 50, null: false
    	t.string 	:last_name, limit: 50, null: false
    	t.string 	:title, limit: 128, null: false
    	t.text 	 	:email, null: false
    	t.string	:phone, limit: 10, null: false


      t.timestamps null: false
    end

    	add_index :employees, :email, unique: true
  end
end
