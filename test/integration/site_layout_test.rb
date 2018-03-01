require 'test_helper' # Note, this is added by default

#This file is generated via 'rails generate integration_test site_layout' - note that that provided name 'site_layout' is automatically converted to CamelCase and concatenated the word 'Test'.
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    # get #_path + assert_template 'static_pages/#' go together.
    get root_path
    assert_template 'static_pages/home'
    assert_select "title", full_title()
    
    get home_path
    assert_template 'static_pages/home'
    assert_select "title", full_title()
    
    get help_path
    assert_template 'static_pages/help'
    assert_select "title", full_title("Help")
    
    get contact_path
    assert_select "title", full_title("Contact")
    
    get signup_path
    assert_template 'users/new'
    assert_select "title", full_title("Sign up")
    
    assert_select "a[href=?]", root_path, count: 2
    #count is like ~# of occurences
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    
  end
end
