class Post < ActiveRecord::Base
  has_many :likes
  has_many :comments

  validates_presence_of :email, :image, :location

  scope :recent, -> { order created_at: :desc }
  scope :most_liked, -> { order likes_count: :desc }

  has_attached_file :image,
    styles: {
      original: "700x*>"
    }
end
