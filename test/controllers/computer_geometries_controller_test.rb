require 'test_helper'

class ComputerGeometriesControllerTest < ActionController::TestCase
  setup do
    @computer_geometry = computer_geometries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:computer_geometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create computer_geometry" do
    assert_difference('ComputerGeometry.count') do
      post :create, computer_geometry: { c_coordinates: @computer_geometry.c_coordinates, computer_id: @computer_geometry.computer_id, front_point: @computer_geometry.front_point }
    end

    assert_redirected_to computer_geometry_path(assigns(:computer_geometry))
  end

  test "should show computer_geometry" do
    get :show, id: @computer_geometry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @computer_geometry
    assert_response :success
  end

  test "should update computer_geometry" do
    patch :update, id: @computer_geometry, computer_geometry: { c_coordinates: @computer_geometry.c_coordinates, computer_id: @computer_geometry.computer_id, front_point: @computer_geometry.front_point }
    assert_redirected_to computer_geometry_path(assigns(:computer_geometry))
  end

  test "should destroy computer_geometry" do
    assert_difference('ComputerGeometry.count', -1) do
      delete :destroy, id: @computer_geometry
    end

    assert_redirected_to computer_geometries_path
  end
end
