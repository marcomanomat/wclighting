class Company < ApplicationRecord
  attr_accessor :delete_image
  before_validation { image.clear if @delete_image }	


  def delete_image
    @delete_image ||= false
  end

  def delete_image=(value)
    @delete_image  = !value.to_i.zero?
  end

	has_many :images, dependent: :destroy 




	validates_associated :images

	validates :name, :phone, :address, :email, presence: true

	has_attached_file :img, required: false


  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }

	accepts_nested_attributes_for :images, :allow_destroy => true                                   
end
