class ProductType < ApplicationRecord
	has_many :manufacturers
	validates :name, presence: true
end
