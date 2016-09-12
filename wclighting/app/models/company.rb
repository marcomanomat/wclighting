class Company < ApplicationRecord
	validates :name, :phone, :title, :address, :email, presence: true
end
