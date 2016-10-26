class Image < ApplicationRecord
	belongs_to :manufacturer
	belongs_to :company
	attr_accessor :delete_image

	has_attached_file :img, required: false,
	    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" },
      :storage => :s3,
      :bucket  => 'wclwebsite',
      :s3_credentials => {
              :access_key_id => 'AKIAIWYJ72W3GHDHIMPQ',
              :secret_access_key => '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'
          }      



	validates_attachment_presence :img
  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

# accepts_nested_attributes_for :manufacturer, :reject_if => lambda { |t| t['manufacturer'].nil? }
end
