require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get porfolio" do
    get :porfolio
    assert_response :success
  end

end
