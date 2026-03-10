require "test_helper"

class LoanRepaymentTest < ActiveSupport::TestCase
  test "validates amount greater than 0" do
    repayment = LoanRepayment.new(loan: loans(:ahmad_loan), paid_on: Date.current, amount: 0)
    assert_not repayment.valid?
    assert_includes repayment.errors[:amount], "must be greater than 0"
  end

  test "validates paid_on presence" do
    repayment = LoanRepayment.new(loan: loans(:ahmad_loan), amount: 500)
    assert_not repayment.valid?
    assert_includes repayment.errors[:paid_on], "can't be blank"
  end

  test "auto_settle_loan when balance reaches zero" do
    # Create a loan with amount = 500, monthly = 500
    loan = Loan.create!(
      member: members(:ahmad), amount: 500,
      approved_date: Date.current, monthly_repayment: 500
    )
    assert loan.active?

    # One repayment of 500 should settle it
    loan.loan_repayments.create!(amount: 500, paid_on: Date.current)
    assert loan.reload.settled?
  end

  test "auto_settle_loan when balance goes below zero" do
    loan = Loan.create!(
      member: members(:ahmad), amount: 500,
      approved_date: Date.current, monthly_repayment: 500
    )

    # Overpay
    loan.loan_repayments.create!(amount: 600, paid_on: Date.current)
    assert loan.reload.settled?
  end

  test "does not settle loan when balance remains positive" do
    loan = Loan.create!(
      member: members(:ahmad), amount: 1000,
      approved_date: Date.current, monthly_repayment: 500
    )

    loan.loan_repayments.create!(amount: 500, paid_on: Date.current)
    assert loan.reload.active?
  end
end
