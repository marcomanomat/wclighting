class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	# :database_authenticatable, :registerable,
  # :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :trackable, :timeoutable, :lockable 
end
