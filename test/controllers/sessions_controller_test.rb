require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "show sessions page" do
    get :log_in
    assert_response :success
  end

  test "show login fields" do
    assert_select("login-email")
  end

end
