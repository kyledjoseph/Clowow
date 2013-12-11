class WelcomeController < ApplicationController
	def index
		@posts  = Post.all
		@users = User.all
		@likes = [[]]
		@comments = [[]]
		@posts.each do |post|
			like_count = Like.where(:post_id => post.id).count
			comment_count = Comment.where(:post_id => post.id).count
			if like_count == 1
				phrase = 'person likes'
			else
				phrase = 'people like'
			end
			if comment_count == 1
				word = 'comment'
			else
				word = 'comments'
			end
			@comments[post[:id]] = "#{comment_count} #{word}"
			@likes[post[:id]] = "#{like_count} #{phrase} this"
		end
	end
end
