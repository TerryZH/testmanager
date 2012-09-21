require 'test_helper'

class TestresultsControllerTest < ActionController::TestCase
  setup do
    @testresult = testresults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testresults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testresult" do
    assert_difference('Testresult.count') do
      post :create, testresult: { comments: @testresult.comments, locale: @testresult.locale, test_result: @testresult.test_result, testcase: @testresult.testcase, testplan: @testresult.testplan, user: @testresult.user }
    end

    assert_redirected_to testresult_path(assigns(:testresult))
  end

  test "should show testresult" do
    get :show, id: @testresult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testresult
    assert_response :success
  end

  test "should update testresult" do
    put :update, id: @testresult, testresult: { comments: @testresult.comments, locale: @testresult.locale, test_result: @testresult.test_result, testcase: @testresult.testcase, testplan: @testresult.testplan, user: @testresult.user }
    assert_redirected_to testresult_path(assigns(:testresult))
  end

  test "should destroy testresult" do
    assert_difference('Testresult.count', -1) do
      delete :destroy, id: @testresult
    end

    assert_redirected_to testresults_path
  end
end
