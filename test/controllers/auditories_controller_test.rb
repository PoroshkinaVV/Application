require 'test_helper'

class AuditoriesControllerTest < ActionController::TestCase
  setup do
    @auditory = auditories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auditories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auditory" do
    assert_difference('Auditory.count') do
      post :create, auditory: { building_id: @auditory.building_id, name: @auditory.name }
    end

    assert_redirected_to auditory_path(assigns(:auditory))
  end

  test "should show auditory" do
    get :show, id: @auditory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auditory
    assert_response :success
  end

  test "should update auditory" do
    patch :update, id: @auditory, auditory: { building_id: @auditory.building_id, name: @auditory.name }
    assert_redirected_to auditory_path(assigns(:auditory))
  end

  test "should destroy auditory" do
    assert_difference('Auditory.count', -1) do
      delete :destroy, id: @auditory
    end

    assert_redirected_to auditories_path
  end
end
