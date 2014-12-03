require 'test_helper'

class ControllersControllerTest < ActionController::TestCase
  setup do
    @controller = controllers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controllers)
  end

  test "should create controller" do
    assert_difference('Controller.count') do
      post :create, controller: { User: @controller.User }
    end

    assert_response 201
  end

  test "should show controller" do
    get :show, id: @controller
    assert_response :success
  end

  test "should update controller" do
    put :update, id: @controller, controller: { User: @controller.User }
    assert_response 204
  end

  test "should destroy controller" do
    assert_difference('Controller.count', -1) do
      delete :destroy, id: @controller
    end

    assert_response 204
  end
end
