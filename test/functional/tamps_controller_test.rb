require 'test_helper'

class TampsControllerTest < ActionController::TestCase
  setup do
    @tamp = tamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tamp" do
    assert_difference('Tamp.count') do
      post :create, tamp: {  }
    end

    assert_redirected_to tamp_path(assigns(:tamp))
  end

  test "should show tamp" do
    get :show, id: @tamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tamp
    assert_response :success
  end

  test "should update tamp" do
    put :update, id: @tamp, tamp: {  }
    assert_redirected_to tamp_path(assigns(:tamp))
  end

  test "should destroy tamp" do
    assert_difference('Tamp.count', -1) do
      delete :destroy, id: @tamp
    end

    assert_redirected_to tamps_path
  end
end
