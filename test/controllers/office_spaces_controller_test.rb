require 'test_helper'

class OfficeSpacesControllerTest < ActionController::TestCase
  setup do
    @office_space = office_spaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_spaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_space" do
    assert_difference('OfficeSpace.count') do
      post :create, office_space: { address: @office_space.address, city: @office_space.city, description: @office_space.description, name: @office_space.name, zip: @office_space.zip }
    end

    assert_redirected_to office_space_path(assigns(:office_space))
  end

  test "should show office_space" do
    get :show, id: @office_space
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_space
    assert_response :success
  end

  test "should update office_space" do
    patch :update, id: @office_space, office_space: { address: @office_space.address, city: @office_space.city, description: @office_space.description, name: @office_space.name, zip: @office_space.zip }
    assert_redirected_to office_space_path(assigns(:office_space))
  end

  test "should destroy office_space" do
    assert_difference('OfficeSpace.count', -1) do
      delete :destroy, id: @office_space
    end

    assert_redirected_to office_spaces_path
  end
end
