require 'test_helper'

class FloorGeometriesControllerTest < ActionController::TestCase
  setup do
    @floor_geometry = floor_geometries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floor_geometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floor_geometry" do
    assert_difference('FloorGeometry.count') do
      post :create, floor_geometry: { f_coordinates: @floor_geometry.f_coordinates, floor_id: @floor_geometry.floor_id }
    end

    assert_redirected_to floor_geometry_path(assigns(:floor_geometry))
  end

  test "should show floor_geometry" do
    get :show, id: @floor_geometry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floor_geometry
    assert_response :success
  end

  test "should update floor_geometry" do
    patch :update, id: @floor_geometry, floor_geometry: { f_coordinates: @floor_geometry.f_coordinates, floor_id: @floor_geometry.floor_id }
    assert_redirected_to floor_geometry_path(assigns(:floor_geometry))
  end

  test "should destroy floor_geometry" do
    assert_difference('FloorGeometry.count', -1) do
      delete :destroy, id: @floor_geometry
    end

    assert_redirected_to floor_geometries_path
  end
end
