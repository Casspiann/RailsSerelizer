require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get v1" do
    get api_v1_url
    assert_response :success
  end

  test "should get User" do
    get api_User_url
    assert_response :success
  end

  test "should get index" do
    get api_index_url
    assert_response :success
  end

  test "should get show" do
    get api_show_url
    assert_response :success
  end

  test "should get update" do
    get api_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get api_edit_url
    assert_response :success
  end

  test "should get create" do
    get api_create_url
    assert_response :success
  end

  test "should get new" do
    get api_new_url
    assert_response :success
  end
end
