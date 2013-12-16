class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      redirect_to root_path, alert: 'There were errors.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:email, :image, :location)
  end
end
