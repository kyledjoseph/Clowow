class WelcomeController < ApplicationController
  def index
    @posts = Post.includes(:comments, :likes)
  end
end
