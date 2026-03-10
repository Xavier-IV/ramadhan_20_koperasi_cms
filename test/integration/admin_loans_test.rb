require "test_helper"

class AdminLoansTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_as users(:admin)
  end

  test "index lists loans" do
    get admin_loans_path
    assert_response :success
    assert_select "td", text: members(:ahmad).name
    assert_select "td", text: members(:siti).name
  end

  test "show displays loan details and repayments" do
    get admin_loan_path(loans(:ahmad_loan))
    assert_response :success
    assert_select "dd", text: /Ahmad/
    assert_select "dd", text: /5,000.00/
  end

  test "new renders form" do
    get new_admin_loan_path
    assert_response :success
    assert_select "form"
  end

  test "create with valid params" do
    assert_difference "Loan.count", 1 do
      post admin_loans_path, params: {
        loan: {
          member_id: members(:ahmad).id,
          amount: 2000,
          approved_date: Date.current,
          monthly_repayment: 200,
          status: "active"
        }
      }
    end
    loan = Loan.order(:created_at).last
    assert_redirected_to admin_loan_path(loan)
    follow_redirect!
    assert_match(/created/i, response.body)
  end

  test "create with invalid params re-renders" do
    assert_no_difference "Loan.count" do
      post admin_loans_path, params: {
        loan: { member_id: members(:ahmad).id, amount: 0, approved_date: "", monthly_repayment: 0 }
      }
    end
    assert_response :unprocessable_entity
  end

  test "edit renders form" do
    get edit_admin_loan_path(loans(:ahmad_loan))
    assert_response :success
    assert_select "form"
  end

  test "update with valid params" do
    patch admin_loan_path(loans(:ahmad_loan)), params: { loan: { amount: 6000 } }
    assert_redirected_to admin_loan_path(loans(:ahmad_loan))
    assert_equal BigDecimal("6000.0"), loans(:ahmad_loan).reload.amount
  end

  test "update with invalid params re-renders" do
    patch admin_loan_path(loans(:ahmad_loan)), params: { loan: { amount: 0 } }
    assert_response :unprocessable_entity
  end

  test "destroy removes loan" do
    assert_difference "Loan.count", -1 do
      delete admin_loan_path(loans(:ahmad_loan))
    end
    assert_redirected_to admin_loans_path
  end
end
