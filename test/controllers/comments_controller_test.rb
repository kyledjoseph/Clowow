require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @comment = comments(:one)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, post_id: @post.id, comment: { content: @comment.content }
    end
    assert_redirected_to root_path
  end
end
