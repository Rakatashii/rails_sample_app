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
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@gmail.com USER@foo.org A_USA-EU@foo.bar.edu]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
      # if @user.valid? == false, display second arg as error message
    end
  end
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example foo@bar_baz.com foo@bar+baz.org]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    #Additionally, verifies that the 'i' modifier in the regular expression is doing what it is supposed to
    duplicate_user.email = @user.email.upcase
    @user.save # without this, test fails
    assert_not duplicate_user.valid?
  end
end
