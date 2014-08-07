class User < ActiveRecord::Base
	has_many :posts
	has_attached_file :icon, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates_attachment :icon, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
