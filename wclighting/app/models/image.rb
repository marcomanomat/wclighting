class Image < ApplicationRecord
	belongs_to :manufacturer
	belongs_to :company
	attr_accessor :delete_image

	has_attached_file :img, 
	    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }



	validates_attachment_presence :img
  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

# accepts_nested_attributes_for :manufacturer, :reject_if => lambda { |t| t['manufacturer'].nil? }
end
