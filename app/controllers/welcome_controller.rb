class WelcomeController < ApplicationController
	def index
		@posts  = Post.all
		@users = User.all
		@comments = [[]]
		
		@comment_count = []
		@like_count = []

		@posts.each do |post|
			like_count = Like.where(:post_id => post.id).count
			like_count == 1 ? phrase = 'person likes' : phrase = 'people like'
			
			comment_count = Comment.where(:post_id => post.id).count
			comment_count == 1 ? word = 'comment' : word = 'comments'

			@like_count[post[:id]] = "#{like_count} #{phrase} this"
			@comment_count[post[:id]] = "#{comment_count} #{word}"
			comment_array = []
			Comment.where(:post_id =>post.id).each do |comment|
				comment_array.push(comment.content)
			end
			@comments[post[:id]] = comment_array
		end
	end
end
