require 'test_helper'

class RegisterSearchesControllerTest < ActionController::TestCase
  setup do
    @register_search = register_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:register_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create register_search" do
    assert_difference('RegisterSearch.count') do
      post :create, register_search: {  }
    end

    assert_redirected_to register_search_path(assigns(:register_search))
  end

  test "should show register_search" do
    get :show, id: @register_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @register_search
    assert_response :success
  end

  test "should update register_search" do
    patch :update, id: @register_search, register_search: {  }
    assert_redirected_to register_search_path(assigns(:register_search))
  end

  test "should destroy register_search" do
    assert_difference('RegisterSearch.count', -1) do
      delete :destroy, id: @register_search
    end

    assert_redirected_to register_searches_path
  end
end
