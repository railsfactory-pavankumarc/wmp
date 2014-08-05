class Post < ActiveRecord::Base
	belongs_to :user
  #attr_accessor :title, :content
validates :title, :content, :presence => true
validates :title, :length => {:minimum => 2 }
validates :title, :uniqueness => {:message => "already taken"}
end
