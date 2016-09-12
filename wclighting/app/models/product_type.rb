class ProductType < ApplicationRecord
	has_and_belongs_to_many :manufacturers
	validates :name, presence: true
end
