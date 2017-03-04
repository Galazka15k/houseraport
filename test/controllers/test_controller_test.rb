require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get zaloguj" do
    get :zaloguj
    assert_response :success
  end

end
