require 'test_helper'

class RedemptionsControllerTest < ActionController::TestCase
  setup do
    @redemption = redemptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redemptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redemption" do
    assert_difference('Redemption.count') do
      post :create, :redemption => @redemption.attributes
    end

    assert_redirected_to redemption_path(assigns(:redemption))
  end

  test "should show redemption" do
    get :show, :id => @redemption.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @redemption.to_param
    assert_response :success
  end

  test "should update redemption" do
    put :update, :id => @redemption.to_param, :redemption => @redemption.attributes
    assert_redirected_to redemption_path(assigns(:redemption))
  end

  test "should destroy redemption" do
    assert_difference('Redemption.count', -1) do
      delete :destroy, :id => @redemption.to_param
    end

    assert_redirected_to redemptions_path
  end
end
