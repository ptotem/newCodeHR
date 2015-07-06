require 'test_helper'

class FileStoragesControllerTest < ActionController::TestCase
  setup do
    @file_storage = file_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_storage" do
    assert_difference('FileStorage.count') do
      post :create, file_storage: {  }
    end

    assert_redirected_to file_storage_path(assigns(:file_storage))
  end

  test "should show file_storage" do
    get :show, id: @file_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_storage
    assert_response :success
  end

  test "should update file_storage" do
    patch :update, id: @file_storage, file_storage: {  }
    assert_redirected_to file_storage_path(assigns(:file_storage))
  end

  test "should destroy file_storage" do
    assert_difference('FileStorage.count', -1) do
      delete :destroy, id: @file_storage
    end

    assert_redirected_to file_storages_path
  end
end
