require 'test_helper'

class EmergencyCallsControllerTest < ActionController::TestCase
  setup do
    @emergency_call = emergency_calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_call" do
    assert_difference('EmergencyCall.count') do
      post :create, emergency_call: { phone: @emergency_call.phone, phone_number: @emergency_call.phone_number }
    end

    assert_redirected_to emergency_call_path(assigns(:emergency_call))
  end

  test "should show emergency_call" do
    get :show, id: @emergency_call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency_call
    assert_response :success
  end

  test "should update emergency_call" do
    patch :update, id: @emergency_call, emergency_call: { phone: @emergency_call.phone, phone_number: @emergency_call.phone_number }
    assert_redirected_to emergency_call_path(assigns(:emergency_call))
  end

  test "should destroy emergency_call" do
    assert_difference('EmergencyCall.count', -1) do
      delete :destroy, id: @emergency_call
    end

    assert_redirected_to emergency_calls_path
  end
end
