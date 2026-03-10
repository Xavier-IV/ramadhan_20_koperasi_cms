require "test_helper"

class LoanTest < ActiveSupport::TestCase
  test "validates amount greater than 0" do
    loan = Loan.new(member: members(:ahmad), approved_date: Date.current, monthly_repayment: 100, amount: 0)
    assert_not loan.valid?
    assert_includes loan.errors[:amount], "must be greater than 0"
  end

  test "validates monthly_repayment greater than 0" do
    loan = Loan.new(member: members(:ahmad), approved_date: Date.current, amount: 1000, monthly_repayment: 0)
    assert_not loan.valid?
    assert_includes loan.errors[:monthly_repayment], "must be greater than 0"
  end

  test "validates approved_date presence" do
    loan = Loan.new(member: members(:ahmad), amount: 1000, monthly_repayment: 100)
    assert_not loan.valid?
    assert_includes loan.errors[:approved_date], "can't be blank"
  end

  test "generates uuid on create" do
    loan = Loan.create!(member: members(:ahmad), amount: 1000, approved_date: Date.current, monthly_repayment: 100)
    assert loan.uuid.present?
  end

  test "to_param returns uuid" do
    assert_equal loans(:ahmad_loan).uuid, loans(:ahmad_loan).to_param
  end

  test "outstanding_balance calculates correctly" do
    loan = loans(:ahmad_loan)
    # loan amount 5000, 2 repayments of 500 each = 1000 paid
    assert_equal BigDecimal("4000.0"), loan.outstanding_balance
  end

  test "outstanding_balance with no repayments equals amount" do
    loan = Loan.create!(member: members(:siti), amount: 2000, approved_date: Date.current, monthly_repayment: 200)
    assert_equal BigDecimal("2000.0"), loan.outstanding_balance
  end

  test "status enum defaults to active" do
    loan = Loan.new
    assert loan.active?
  end

  test "active scope returns active loans" do
    assert_includes Loan.active, loans(:ahmad_loan)
    assert_not_includes Loan.active, loans(:settled_loan)
  end

  test "settled scope returns settled loans" do
    assert_includes Loan.settled, loans(:settled_loan)
    assert_not_includes Loan.settled, loans(:ahmad_loan)
  end

  test "with_missed_repayment_this_month scope" do
    # Create a loan with no repayment this month
    loan_no_repayment = Loan.create!(
      member: members(:ahmad), amount: 5000,
      approved_date: Date.current, monthly_repayment: 500
    )

    # Create a loan with a repayment this month
    loan_with_repayment = Loan.create!(
      member: members(:siti), amount: 3000,
      approved_date: Date.current, monthly_repayment: 300
    )
    loan_with_repayment.loan_repayments.create!(amount: 300, paid_on: Date.current)

    missed = Loan.with_missed_repayment_this_month
    assert_includes missed, loan_no_repayment
    assert_not_includes missed, loan_with_repayment
  end
end
