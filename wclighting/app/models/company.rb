class Company < ApplicationRecord
	has_many :images

	has_attached_file :img
	
	validates :name, :phone, :title, :address, :email, presence: true

  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }	
end
