require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get new" do
    get signup_path
    #get '/signup' # This is equivalent to 'get signup_path'
    assert_select "title", "Sign up | #{@base_title}"
    assert_response :success
  end

end
