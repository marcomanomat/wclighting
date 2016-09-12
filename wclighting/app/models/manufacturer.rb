class Manufacturer < ApplicationRecord
	# include PgSearch
	# multisearchable :against => [:]	
	belongs_to :product_type, required: true

	validates :name, :profile, :website, presence: true
	validates :name, :profile, :website, uniqueness: true		
end
