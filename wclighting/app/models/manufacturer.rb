class Manufacturer < ApplicationRecord
		# include PgSearch
	# multisearchable :against => [:]
  attr_accessor :delete_image, :logo_file_name
  before_validation { image.clear if @delete_image }	


  def delete_image
    @delete_image ||= false
  end

  def delete_image=(value)
    @delete_image  = !value.to_i.zero?
  end

	has_many :images, dependent: :destroy 
	has_and_belongs_to_many :product_types



	validates_associated :images

	validates :name, :profile, :website, presence: true
	validates :name, :website, uniqueness: true

  has_attached_file :img, required: false,
            :style => { :medium => "300x300>", :thumb => "100x100>" },
            :storage => :s3,
            :bucket  => 'wclwebsite',
            :s3_credentials => {
                    :access_key_id => 'AKIAIWYJ72W3GHDHIMPQ',
                    :secret_access_key => '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'
                },
            :s3_permissions => 'private',
            :url => ":s3_domain_url"

	has_attached_file :logo, required: false,
            :style => { :medium => "300x300>", :thumb => "100x100>" },
            :storage => :s3,
            :bucket  => 'wclwebsite',
            :s3_credentials => {
                    :access_key_id => 'AKIAIWYJ72W3GHDHIMPQ',
                    :secret_access_key => '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'
                },
            :s3_permissions => 'private',
            :url => ":s3_domain_url"

  validates_attachment_content_type :logo,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }

	accepts_nested_attributes_for :images, :allow_destroy => true                                   
end
