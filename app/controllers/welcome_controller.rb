class WelcomeController < ApplicationController
	def index
		@posts  = Post.all
		@users = User.all
		@likes = []
		@comments = []
		@posts.each do |post|
			like_count = Like.where(:post_id => post.id).count
			like_count == 1 ? phrase = 'person likes' : phrase = 'people like'
			
			comment_count = Comment.where(:post_id => post.id).count
			comment_count == 1 ? word = 'comment' : word = 'comments'

			@likes[post[:id]] = "#{like_count} #{phrase} this"
			@comments[post[:id]] = "#{comment_count} #{word}"

		end
	end
end
