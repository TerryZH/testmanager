require 'test_helper'

class BlockersControllerTest < ActionController::TestCase
  setup do
    @blocker = blockers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blockers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blocker" do
    assert_difference('Blocker.count') do
      post :create, blocker: { blockers_id: @blocker.blockers_id }
    end

    assert_redirected_to blocker_path(assigns(:blocker))
  end

  test "should show blocker" do
    get :show, id: @blocker
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blocker
    assert_response :success
  end

  test "should update blocker" do
    put :update, id: @blocker, blocker: { blockers_id: @blocker.blockers_id }
    assert_redirected_to blocker_path(assigns(:blocker))
  end

  test "should destroy blocker" do
    assert_difference('Blocker.count', -1) do
      delete :destroy, id: @blocker
    end

    assert_redirected_to blockers_path
  end
end
