require "test_helper"

class AdminContributionsTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "index lists contributions" do
    get admin_contributions_path
    assert_response :success
    assert_select "td", text: /Ahmad/
  end

  test "show displays contribution details" do
    get admin_contribution_path(contributions(:ahmad_jan_paid))
    assert_response :success
    assert_select "dd", text: /Ahmad/
    assert_select "dd", text: /January 2025/
  end

  test "new renders form" do
    get new_admin_contribution_path
    assert_response :success
    assert_select "form"
  end

  test "create with valid params" do
    assert_difference "Contribution.count", 1 do
      post admin_contributions_path, params: {
        contribution: {
          member_id: members(:siti).id,
          amount: 50.00,
          month: 6,
          year: 2025,
          status: "paid",
          paid_on: "2025-06-10"
        }
      }
    end
    assert_redirected_to admin_contributions_path
    follow_redirect!
    assert_match(/created/i, response.body)
  end

  test "create with invalid params re-renders" do
    assert_no_difference "Contribution.count" do
      post admin_contributions_path, params: {
        contribution: {
          member_id: members(:ahmad).id,
          amount: 0,
          month: 13,
          year: 1999
        }
      }
    end
    assert_response :unprocessable_entity
  end

  test "edit renders form" do
    get edit_admin_contribution_path(contributions(:ahmad_jan_paid))
    assert_response :success
    assert_select "form"
  end

  test "update with valid params" do
    patch admin_contribution_path(contributions(:ahmad_jan_paid)), params: {
      contribution: { amount: 75.00 }
    }
    assert_redirected_to admin_contribution_path(contributions(:ahmad_jan_paid))
    assert_equal 75.00, contributions(:ahmad_jan_paid).reload.amount.to_f
  end

  test "update with invalid params re-renders" do
    patch admin_contribution_path(contributions(:ahmad_jan_paid)), params: {
      contribution: { amount: 0 }
    }
    assert_response :unprocessable_entity
  end

  test "destroy removes contribution" do
    assert_difference "Contribution.count", -1 do
      delete admin_contribution_path(contributions(:ahmad_jan_paid))
    end
    assert_redirected_to admin_contributions_path
  end
end
