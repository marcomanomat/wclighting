class Manufacturer < ApplicationRecord
	# include PgSearch
	# multisearchable :against => [:]
	has_and_belongs_to_many :product_types

	validates :name, :profile, :website, presence: true
	validates :name, :website, uniqueness: true
end
