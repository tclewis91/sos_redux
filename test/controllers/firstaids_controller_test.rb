require 'test_helper'

class FirstaidsControllerTest < ActionController::TestCase
  setup do
    @firstaid = firstaids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firstaids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firstaid" do
    assert_difference('Firstaid.count') do
      post :create, firstaid: { emergency_snake: @firstaid.emergency_snake, emergency_spider: @firstaid.emergency_spider, snake_bite: @firstaid.snake_bite, spider_bite: @firstaid.spider_bite }
    end

    assert_redirected_to firstaid_path(assigns(:firstaid))
  end

  test "should show firstaid" do
    get :show, id: @firstaid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firstaid
    assert_response :success
  end

  test "should update firstaid" do
    patch :update, id: @firstaid, firstaid: { emergency_snake: @firstaid.emergency_snake, emergency_spider: @firstaid.emergency_spider, snake_bite: @firstaid.snake_bite, spider_bite: @firstaid.spider_bite }
    assert_redirected_to firstaid_path(assigns(:firstaid))
  end

  test "should destroy firstaid" do
    assert_difference('Firstaid.count', -1) do
      delete :destroy, id: @firstaid
    end

    assert_redirected_to firstaids_path
  end
end
