require 'test_helper'

class UserstoriesControllerTest < ActionController::TestCase
  setup do
    @userstory = userstories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userstories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userstory" do
    assert_difference('Userstory.count') do
      post :create, userstory: { description: @userstory.description, title: @userstory.title }
    end

    assert_redirected_to userstory_path(assigns(:userstory))
  end

  test "should show userstory" do
    get :show, id: @userstory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userstory
    assert_response :success
  end

  test "should update userstory" do
    put :update, id: @userstory, userstory: { description: @userstory.description, title: @userstory.title }
    assert_redirected_to userstory_path(assigns(:userstory))
  end

  test "should destroy userstory" do
    assert_difference('Userstory.count', -1) do
      delete :destroy, id: @userstory
    end

    assert_redirected_to userstories_path
  end
end
