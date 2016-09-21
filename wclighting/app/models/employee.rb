class Employee < ApplicationRecord
	validates :first_name, :last_name, :title, :email, :phone, presence: true
	validates :email, uniqueness: true
	validates :first_name, :last_name, length: { maximum: 50 }
	validates :phone, length: { is: 10 }

end
