require 'test_helper'

class DeskGeometriesControllerTest < ActionController::TestCase
  setup do
    @desk_geometry = desk_geometries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desk_geometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desk_geometry" do
    assert_difference('DeskGeometry.count') do
      post :create, desk_geometry: { d_coordinates: @desk_geometry.d_coordinates, desk_id: @desk_geometry.desk_id, front_point: @desk_geometry.front_point }
    end

    assert_redirected_to desk_geometry_path(assigns(:desk_geometry))
  end

  test "should show desk_geometry" do
    get :show, id: @desk_geometry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desk_geometry
    assert_response :success
  end

  test "should update desk_geometry" do
    patch :update, id: @desk_geometry, desk_geometry: { d_coordinates: @desk_geometry.d_coordinates, desk_id: @desk_geometry.desk_id, front_point: @desk_geometry.front_point }
    assert_redirected_to desk_geometry_path(assigns(:desk_geometry))
  end

  test "should destroy desk_geometry" do
    assert_difference('DeskGeometry.count', -1) do
      delete :destroy, id: @desk_geometry
    end

    assert_redirected_to desk_geometries_path
  end
end
