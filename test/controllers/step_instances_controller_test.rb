require 'test_helper'

class StepInstancesControllerTest < ActionController::TestCase
  setup do
    @step_instance = step_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_instance" do
    assert_difference('StepInstance.count') do
      post :create, step_instance: {  }
    end

    assert_redirected_to step_instance_path(assigns(:step_instance))
  end

  test "should show step_instance" do
    get :show, id: @step_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_instance
    assert_response :success
  end

  test "should update step_instance" do
    patch :update, id: @step_instance, step_instance: {  }
    assert_redirected_to step_instance_path(assigns(:step_instance))
  end

  test "should destroy step_instance" do
    assert_difference('StepInstance.count', -1) do
      delete :destroy, id: @step_instance
    end

    assert_redirected_to step_instances_path
  end
end
