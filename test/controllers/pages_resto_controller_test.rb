require 'test_helper'

class PagesRestoControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Search Resto App"
  end


  test "should get home" do
    get pages_resto_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get reservation" do
    get pages_resto_reservation_url
    assert_response :success
    assert_select "title", "Reservation | #{@base_title}"
  end

  test "should get signup" do
    get pages_resto_signup_url
    assert_response :success
    assert_select "title", "Sign Up | #{@base_title}"
  end

  test "should get contact" do
    get pages_resto_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

end
