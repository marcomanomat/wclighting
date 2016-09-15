class Image < ApplicationRecord
	belongs_to :manufacturer
	belongs_to :company

	has_attached_file :image, required: true

  validates_attachment_content_type :image,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

end
