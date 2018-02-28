require 'test_helper' # Note, this is added by default

#This file is generated via 'rails generate integration_test site_layout' - note that that provided name 'site_layout' is automatically converted to CamelCase and concatenated the word 'Test'.
class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    #count is like ~# of occurences
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    
    get contact_path
    assert_select "title", full_title("Contact")
  end
end
