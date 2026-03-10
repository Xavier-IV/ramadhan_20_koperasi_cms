require "test_helper"

class AdminImpersonationTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
    @regular_user = users(:regular)
  end

  test "admin can start impersonating a user" do
    post admin_impersonation_path, params: { user_id: @regular_user.id }
    assert_redirected_to root_path
    follow_redirect!
    assert_match "Now viewing as", flash[:notice]
  end

  test "admin can stop impersonating" do
    post admin_impersonation_path, params: { user_id: @regular_user.id }
    delete admin_impersonation_path
    assert_redirected_to admin_root_path
    assert_match "Stopped impersonating", flash[:notice]
  end

  test "admin can still access admin panel while impersonating" do
    post admin_impersonation_path, params: { user_id: @regular_user.id }
    get admin_root_path
    assert_response :success
  end
end
