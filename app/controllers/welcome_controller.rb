class WelcomeController < ApplicationController
	def index
		@posts  = Post.all
		@users = User.all
		@likes = [[]]
		@posts.each do |post|
			like_count = Like.where(:post_id => post.id).count
			if like_count == 1
				phrase = 'person likes'
			else
				phrase = 'people like'
			end
			@likes[post[:id]] = "#{like_count} #{phrase} this"
		end
	end
end
