class Employee < ApplicationRecord
	validates :first_name, :last_name, :title, :email, :phone, presence: true
	validates :email, uniqueness: true
end
