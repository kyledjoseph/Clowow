class Post < ActiveRecord::Base
	belongs_to :user
  has_many :likes
  has_many :comments

	validates :content, length: { maximum: 512 }
end
