require 'test_helper'

class MembershipControllerTest < ActionController::TestCase
  test "should get why" do
    get :why
    assert_response :success
  end

  test "should get benefits" do
    get :benefits
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

end
