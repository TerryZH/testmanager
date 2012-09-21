require 'test_helper'

class TestplansControllerTest < ActionController::TestCase
  setup do
    @testplan = testplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testplan" do
    assert_difference('Testplan.count') do
      post :create, testplan: { desc: @testplan.desc, end_date_actual: @testplan.end_date_actual, end_date_planned: @testplan.end_date_planned, name: @testplan.name, owner: @testplan.owner, start_date_actual: @testplan.start_date_actual, start_date_planned: @testplan.start_date_planned }
    end

    assert_redirected_to testplan_path(assigns(:testplan))
  end

  test "should show testplan" do
    get :show, id: @testplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testplan
    assert_response :success
  end

  test "should update testplan" do
    put :update, id: @testplan, testplan: { desc: @testplan.desc, end_date_actual: @testplan.end_date_actual, end_date_planned: @testplan.end_date_planned, name: @testplan.name, owner: @testplan.owner, start_date_actual: @testplan.start_date_actual, start_date_planned: @testplan.start_date_planned }
    assert_redirected_to testplan_path(assigns(:testplan))
  end

  test "should destroy testplan" do
    assert_difference('Testplan.count', -1) do
      delete :destroy, id: @testplan
    end

    assert_redirected_to testplans_path
  end
end
