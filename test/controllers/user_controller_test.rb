require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get '/users'
    assert_response :success
  end

  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should post create" do
    post create_user_path, params: {user: {name: 'test987', password: 'password123'}}
    assert_response :redirect
  end

  test "should get edit" do
    get '/users/edit/3'
    assert_response :success
  end
end
