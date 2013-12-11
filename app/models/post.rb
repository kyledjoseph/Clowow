class Post < ActiveRecord::Base
	validates :content, length: { maximum: 512 }
end
