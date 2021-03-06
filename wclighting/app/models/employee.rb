class Employee < ApplicationRecord
	validates :first_name, :last_name, :title, :email, :phone, presence: true
	validates :email, uniqueness: true
	validates :first_name, :last_name, length: { maximum: 50 }
	validates :phone, length: { is: 10 }

	has_attached_file :img, required: false,
	              :style => { :medium => "300x300>", :thumb => "100x100>" },
            :storage => :s3,
            s3_region: 'us-east-1',
            :bucket  => 'wclwebsite',
            :s3_credentials => {
		            :access_key_id => 'AKIAI5RPXUOEMVGJCWGQ',
		            :secret_access_key => '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'
                }


  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

end
