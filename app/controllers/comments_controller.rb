class CommentsController < ApplicationController
  def create
    @comment = Post.find(params[:post_id]).comments.new(comment_params)

    if @comment.save
      redirect_to root_path, notice: 'Comment was successfully created.'
    else
      redirect_to root_path, notice: 'Error while commenting.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
