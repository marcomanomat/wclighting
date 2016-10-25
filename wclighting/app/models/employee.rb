class Employee < ApplicationRecord
	validates :first_name, :last_name, :title, :email, :phone, presence: true
	validates :email, uniqueness: true
	validates :first_name, :last_name, length: { maximum: 50 }
	validates :phone, length: { is: 10 }

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

  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

end
