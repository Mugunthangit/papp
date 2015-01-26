require 'test_helper'

class NlCsControllerTest < ActionController::TestCase
  setup do
    @nlc = nlcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nlcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nlc" do
    assert_difference('Nlc.count') do
      post :create, nlc: { nlc_no: @nlc.nlc_no }
    end

    assert_redirected_to nlc_path(assigns(:nlc))
  end

  test "should show nlc" do
    get :show, id: @nlc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nlc
    assert_response :success
  end

  test "should update nlc" do
    patch :update, id: @nlc, nlc: { nlc_no: @nlc.nlc_no }
    assert_redirected_to nlc_path(assigns(:nlc))
  end

  test "should destroy nlc" do
    assert_difference('Nlc.count', -1) do
      delete :destroy, id: @nlc
    end

    assert_redirected_to nlcs_path
  end
end
