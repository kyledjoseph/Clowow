class Post < ActiveRecord::Base
  has_many :likes
  has_many :comments

  validates_presence_of :email, :image, :location

  has_attached_file :image, path: "images/:id/:style/:filename", url: ":s3_domain_url"
end
