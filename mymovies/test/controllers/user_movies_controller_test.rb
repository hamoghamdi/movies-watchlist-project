require 'test_helper'

class UserMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get user_movies_show_url
    assert_response :success
  end

  test "should get new" do
    get user_movies_new_url
    assert_response :success
  end

  test "should get create" do
    get user_movies_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_movies_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_movies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_movies_destroy_url
    assert_response :success
  end

end
