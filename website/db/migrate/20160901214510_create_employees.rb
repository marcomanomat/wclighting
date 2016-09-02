class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :title
    	# picture using AWS or Paperclip?
      t.timestamps
    end
  end
end
