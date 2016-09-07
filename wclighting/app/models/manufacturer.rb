class Manufacturer < ApplicationRecord
	# include PgSearch
	# multisearchable :against => [:]
	
	belongs_to :product_type, required: true
end
