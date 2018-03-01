require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new(name: "Example User", email: "user@example.com")
  end
  # Instance Objects
  test "should be valid" do
    assert @user.valid?
  end
  # Attribute :name
  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end
  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  # Attribute :email
  test "email should be present" do
    @user.email = " "
    assert_not @user.valid?
  end
  test "email should not be too long" do
    @user.email = "a" * 101
    assert_not @user.valid?
  end
end
