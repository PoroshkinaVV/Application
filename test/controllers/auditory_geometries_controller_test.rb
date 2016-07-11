require 'test_helper'

class AuditoryGeometriesControllerTest < ActionController::TestCase
  setup do
    @auditory_geometry = auditory_geometries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditory_geometries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditory_geometry" do
    assert_difference('AuditoryGeometry.count') do
      post :create, auditory_geometry: { a_coordinates: @auditory_geometry.a_coordinates, auditory_id: @auditory_geometry.auditory_id }
    end

    assert_redirected_to auditory_geometry_path(assigns(:auditory_geometry))
  end

  test "should show auditory_geometry" do
    get :show, id: @auditory_geometry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditory_geometry
    assert_response :success
  end

  test "should update auditory_geometry" do
    patch :update, id: @auditory_geometry, auditory_geometry: { a_coordinates: @auditory_geometry.a_coordinates, auditory_id: @auditory_geometry.auditory_id }
    assert_redirected_to auditory_geometry_path(assigns(:auditory_geometry))
  end

  test "should destroy auditory_geometry" do
    assert_difference('AuditoryGeometry.count', -1) do
      delete :destroy, id: @auditory_geometry
    end

    assert_redirected_to auditory_geometries_path
  end
end
