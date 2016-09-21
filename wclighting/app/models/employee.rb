class Employee < ApplicationRecord
	validates :first_name, :last_name, :title, :email, :phone, presence: true
	validates :email, uniqueness: true
	validates :first_name, :last_name, length: { maximum: 50 }
	validates :phone, length: { is: 10 }

  validates_attachment_content_type :img,
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images',
                                    :size => { in: 0..2.megabytes }		

end
