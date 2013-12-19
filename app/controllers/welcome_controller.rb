class WelcomeController < ApplicationController
  def index
    @posts = Post.recent.includes(:comments)
  end

  def top
    @posts = Post.most_liked.recent.includes(:comments)
    render "index"
  end
end
