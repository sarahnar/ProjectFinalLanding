require 'test_helper'

class PagesRestoControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Search Resto App"
  end


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get reservation" do
    get reservation_path    
    assert_response :success
    assert_select "title", "Reservation | #{@base_title}"
  end

  test "should get signup" do
    get signup_path    
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end

  test "should get contact" do
    get contact_path    
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
