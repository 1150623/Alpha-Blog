
require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  def setup

  end

  test 'loggin in with a user show new' do
    get login_path
    assert_response :success  
  end

  test 'loggin in with a user' do
    User.create(username: "username", email: "email@email.com", password: "password").save
    @user = User.last()
    post login_path, params: { session: { username: @user.username, password: "password" } }
    assert_response :success  
    assert_redirected_to user_path(@user)
    
  end


end