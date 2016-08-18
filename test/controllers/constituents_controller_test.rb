require 'test_helper'

class ConstituentsControllerTest < ActionController::TestCase
  setup do
    @constituent = constituents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constituents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituent" do
    assert_difference('Constituent.count') do
      post :create, constituent: { district: @constituent.district, email: @constituent.email, first_name: @constituent.first_name, last_name: @constituent.last_name, phone_number: @constituent.phone_number, title: @constituent.title }
    end

    assert_redirected_to constituent_path(assigns(:constituent))
  end

  test "should show constituent" do
    get :show, id: @constituent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituent
    assert_response :success
  end

  test "should update constituent" do
    patch :update, id: @constituent, constituent: { district: @constituent.district, email: @constituent.email, first_name: @constituent.first_name, last_name: @constituent.last_name, phone_number: @constituent.phone_number, title: @constituent.title }
    assert_redirected_to constituent_path(assigns(:constituent))
  end

  test "should destroy constituent" do
    assert_difference('Constituent.count', -1) do
      delete :destroy, id: @constituent
    end

    assert_redirected_to constituents_path
  end
end
