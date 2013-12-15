require 'test_helper'

class LikesControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
    @like = likes(:one)
    @post.likes << @like
  end

  test "should create like" do
    assert_difference('Like.count') do
      post :create, post_id: @post.id, format: :js
    end

    assert_response :success
  end

  test "should destroy like" do
    session[:likes] = [@like.id]

    assert_difference('Like.count', -1) do
      delete :destroy, post_id: @like.post_id, id: @like.id, format: :js
    end

    assert_response :success
  end
end
