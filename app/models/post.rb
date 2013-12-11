class Post < ActiveRecord::Base
	belongs_to :user
	validates :content, length: { maximum: 512 }
end
