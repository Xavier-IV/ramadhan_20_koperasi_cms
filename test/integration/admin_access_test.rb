require "test_helper"

class AdminAccessTest < ActionDispatch::IntegrationTest
  test "unauthenticated user is redirected to sign in" do
    get admin_root_path
    assert_redirected_to new_session_path
  end

  test "non-admin user is redirected to root with alert" do
    sign_in_as users(:regular)

    get admin_root_path
    assert_redirected_to root_path
    assert_equal "Not authorized.", flash[:alert]
  end

  test "admin user can access dashboard" do
    sign_in_as users(:admin)

    get admin_root_path
    assert_response :success
    assert_select "h1", text: /Dashboard/
  end
end
