require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { location: @post.location }
    end

    assert_redirected_to post_path(assigns(:post))
  end
end
