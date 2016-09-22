class Manufacturer < ApplicationRecord
	# attr_accessor :img_file_name
	# include PgSearch
	# multisearchable :against => [:]
	has_many :manufacturer_images
	has_and_belongs_to_many :product_types

	validates :name, :profile, :website, presence: true
	validates :name, :website, uniqueness: true

	has_attached_file :img, required: false

  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		
end
