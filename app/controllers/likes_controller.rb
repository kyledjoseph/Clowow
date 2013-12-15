class LikesController < ApplicationController
  before_action :set_post

  def create
    unless @post.likes.find_by(id: session[:likes]).present?
      @like = @post.likes.create
      session[:likes] << @like.id
    end

    render :show
  end

  def destroy
    if session[:likes].include?(params[:id].to_i) && (@like = @post.likes.find(params[:id]))
      @like.destroy
      session[:likes].delete @like.id
    end

    render :show
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
