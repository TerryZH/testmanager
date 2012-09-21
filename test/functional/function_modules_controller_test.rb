require 'test_helper'

class FunctionModulesControllerTest < ActionController::TestCase
  setup do
    @function_module = function_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:function_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function_module" do
    assert_difference('FunctionModule.count') do
      post :create, function_module: { module_name: @function_module.module_name }
    end

    assert_redirected_to function_module_path(assigns(:function_module))
  end

  test "should show function_module" do
    get :show, id: @function_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @function_module
    assert_response :success
  end

  test "should update function_module" do
    put :update, id: @function_module, function_module: { module_name: @function_module.module_name }
    assert_redirected_to function_module_path(assigns(:function_module))
  end

  test "should destroy function_module" do
    assert_difference('FunctionModule.count', -1) do
      delete :destroy, id: @function_module
    end

    assert_redirected_to function_modules_path
  end
end
