require "test_helper"

class AdminLoanRepaymentsTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
    @loan = loans(:ahmad_loan)
  end

  test "new renders repayment form" do
    get new_admin_loan_loan_repayment_path(@loan)
    assert_response :success
    assert_select "form"
  end

  test "create with valid params redirects to loan show" do
    assert_difference "LoanRepayment.count", 1 do
      post admin_loan_loan_repayments_path(@loan), params: {
        loan_repayment: { amount: 500, paid_on: Date.current, notes: "March payment" }
      }
    end
    assert_redirected_to admin_loan_path(@loan)
    follow_redirect!
    assert_match(/recorded/i, response.body)
  end

  test "create with invalid params re-renders" do
    assert_no_difference "LoanRepayment.count" do
      post admin_loan_loan_repayments_path(@loan), params: {
        loan_repayment: { amount: 0, paid_on: "" }
      }
    end
    assert_response :unprocessable_entity
  end
end
