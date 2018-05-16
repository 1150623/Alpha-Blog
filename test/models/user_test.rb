require 'test_helper'


class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "user", email: "email@email.com", password: "password")
  end

  test "User should be valid" do
    assert @user.valid?
  end

  test "Name should be present" do
    @user.username = " "
    assert_not @user.valid?
  end

  test "Name should be unique" do
    @user.save
    user2 = User.new(username: "user", email: "a@a.a", password: "password", admin: true)
    assert_not user2.valid?
  end

  test "Name should not me too long" do
    #maximum = 25
    @user.username = "a" * 26
    assert_not @user.valid?
  end

  test "Name should not me too short" do
    #minimum = 3
    @user.username = "aa"
    assert_not @user.valid?
  end

  test "Email should not me too long" do
    #maximum = 105
    @user.username = "a" * 106
    assert_not @user.valid?
  end

  test "Email should be valid" do
    @user.email = "a.com"
    assert_not @user.valid?
    @user.email = "a@o"
    assert_not @user.valid?
    @user.email = "a@b.c"
    assert @user.valid?
  end

  test "User should default to not admin" do
    @user = User.new(username: "bbbbb", email: "bbbb@bbbb.bbbb", password: "password")
    assert_not @user.admin?
  end

end