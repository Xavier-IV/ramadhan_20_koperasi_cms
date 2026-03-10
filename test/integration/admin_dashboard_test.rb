require "test_helper"

class AdminDashboardTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "dashboard shows active member count" do
    get admin_root_path
    assert_response :success
    assert_select "p", text: /Active Members/
    assert_select "p", text: Member.active.count.to_s
  end

  test "dashboard shows contributions collected this month" do
    get admin_root_path
    assert_response :success
    assert_select "p", text: /Collected This Month/
  end

  test "dashboard shows members in arrears" do
    get admin_root_path
    assert_response :success
    assert_select "p", text: /Members in Arrears/
  end

  test "dashboard shows loans with no repayment this month" do
    get admin_root_path
    assert_response :success
    assert_select "p", text: /No Repayment This Month/
  end

  test "dashboard shows quick links" do
    get admin_root_path
    assert_response :success
    assert_select "a[href='#{admin_members_path}']", text: "Members"
    assert_select "a[href='#{admin_contributions_path}']", text: "Contributions"
    assert_select "a[href='#{admin_loans_path}']", text: "Loans"
  end
end
