require 'test_helper'

class FirstAidsControllerTest < ActionController::TestCase
  setup do
    @first_aid = first_aids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_aids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_aid" do
    assert_difference('FirstAid.count') do
      post :create, first_aid: {  }
    end

    assert_redirected_to first_aid_path(assigns(:first_aid))
  end

  test "should show first_aid" do
    get :show, id: @first_aid
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_aid
    assert_response :success
  end

  test "should update first_aid" do
    patch :update, id: @first_aid, first_aid: {  }
    assert_redirected_to first_aid_path(assigns(:first_aid))
  end

  test "should destroy first_aid" do
    assert_difference('FirstAid.count', -1) do
      delete :destroy, id: @first_aid
    end

    assert_redirected_to first_aids_path
  end
end
