
require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

  test "Sign up new user" do
    get signup_path
    assert_difference 'User.count', 1 do
        post users_path, params: { user: {username: "username", password: "password", email: "email@example.com"}}
    end
    follow_redirect!
    assert_template 'users/show'
  end
end