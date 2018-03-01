require 'test_helper' #where does this come from? What happened to 'minitest/autorun', 'test-unit', + ~rspec?

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  test "should get home" do
    #skip
    #get static_pages_home_url #how is this case generated
    get root_path
    assert_select "title", "#{@base_title}"
    assert_response :success 
    #The response :success is an abstract representation of the underlying HTTP status code (in this case, '200 OK')
  end

  test "should get help" do
    #skip
    #get static_pages_help_url
    get helf_path
    assert_select "title", "Help | #{@base_title}"
    assert_response :success
  end
  
  # This test should fail
  test "should get about" do
    #skip
    #get static_pages_about_url
    get about_path
    assert_select "title", "About | #{@base_title}"
    assert_response :success
  end
  
  test "should get contact" do
    #skip
    #get static_pages_contact_url
    get contact_path
    assert_select "title", "Contact | #{@base_title}"
    assert_response :success
  end
end
