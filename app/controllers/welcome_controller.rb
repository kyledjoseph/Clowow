class WelcomeController < ApplicationController
  def index
    @posts = Post.recent.includes(:comments)
   	@new, @top = 'active', ''
  end

  def top
    @posts = Post.most_liked.recent.includes(:comments)
    @new, @top = '', 'active'
    render "index"
  end


end
