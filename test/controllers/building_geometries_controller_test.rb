require 'test_helper'

class BuildingGeometriesControllerTest < ActionController::TestCase
  setup do
    @building_geometry = building_geometries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_geometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_geometry" do
    assert_difference('BuildingGeometry.count') do
      post :create, building_geometry: { b_coordinates: @building_geometry.b_coordinates, building_id: @building_geometry.building_id }
    end

    assert_redirected_to building_geometry_path(assigns(:building_geometry))
  end

  test "should show building_geometry" do
    get :show, id: @building_geometry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_geometry
    assert_response :success
  end

  test "should update building_geometry" do
    patch :update, id: @building_geometry, building_geometry: { b_coordinates: @building_geometry.b_coordinates, building_id: @building_geometry.building_id }
    assert_redirected_to building_geometry_path(assigns(:building_geometry))
  end

  test "should destroy building_geometry" do
    assert_difference('BuildingGeometry.count', -1) do
      delete :destroy, id: @building_geometry
    end

    assert_redirected_to building_geometries_path
  end
end
