class Manufacturer < ApplicationRecord
		# include PgSearch
	# multisearchable :against => [:]
  attr_accessor :delete_image
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
                :access_key_id => 'AKIAI5RPXUOEMVGJCWGQ',
                :secret_access_key => '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'
                }

	has_attached_file :logo, required: false,
                :style => { :medium => "300x300>", :thumb => "100x100>" },
            :storage => :s3,
            :bucket  => 'wclwebsite',
            :s3_credentials => {
                :access_key_id => 'AKIAI5RPXUOEMVGJCWGQ',
                :secret_access_key => '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'
                }
  validates_attachment_content_type :logo,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }

  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }                                    

	accepts_nested_attributes_for :images, :allow_destroy => true                                   
end
