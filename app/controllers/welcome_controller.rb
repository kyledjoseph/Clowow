class WelcomeController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).includes(:comments, :likes)
  end
end
