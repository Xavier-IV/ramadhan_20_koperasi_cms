require "test_helper"

class ContributionTest < ActiveSupport::TestCase
  test "validates amount greater than 0" do
    contribution = Contribution.new(member: members(:ahmad), amount: 0, month: 6, year: 2025)
    assert_not contribution.valid?
    assert_includes contribution.errors[:amount], "must be greater than 0"
  end

  test "validates month inclusion 1..12" do
    contribution = Contribution.new(member: members(:ahmad), amount: 50, month: 13, year: 2025)
    assert_not contribution.valid?
    assert_includes contribution.errors[:month], "is not included in the list"
  end

  test "validates year greater than 2000" do
    contribution = Contribution.new(member: members(:ahmad), amount: 50, month: 1, year: 1999)
    assert_not contribution.valid?
    assert_includes contribution.errors[:year], "must be greater than 2000"
  end

  test "validates uniqueness of member per month/year" do
    contribution = Contribution.new(
      member: members(:ahmad), amount: 50, month: 1, year: 2025
    )
    assert_not contribution.valid?
    assert_includes contribution.errors[:member_id], "already has a contribution for this month/year"
  end

  test "allows same member in different month" do
    contribution = Contribution.new(
      member: members(:ahmad), amount: 50, month: 6, year: 2025, status: :paid
    )
    assert contribution.valid?
  end

  test "status defaults to paid" do
    contribution = Contribution.new
    assert contribution.paid?
  end

  test "paid scope returns paid contributions" do
    paid = Contribution.paid
    assert_includes paid, contributions(:ahmad_jan_paid)
    assert_not_includes paid, contributions(:zainal_jan_missed)
  end

  test "missed scope returns missed contributions" do
    missed = Contribution.missed
    assert_includes missed, contributions(:zainal_jan_missed)
    assert_not_includes missed, contributions(:ahmad_jan_paid)
  end

  test "for_month scope filters by month and year" do
    jan_2025 = Contribution.for_month(1, 2025)
    assert_includes jan_2025, contributions(:ahmad_jan_paid)
    assert_includes jan_2025, contributions(:zainal_jan_missed)
    assert_not_includes jan_2025, contributions(:ahmad_feb_paid)
  end

  test "total_collected_this_month returns sum of paid contributions" do
    # Create a contribution for the current month
    Contribution.create!(
      member: members(:siti), amount: 75.50,
      month: Date.today.month, year: Date.today.year,
      status: :paid, paid_on: Date.today
    )
    assert_equal 75.50, Contribution.total_collected_this_month.to_f
  end

  test "Member.in_arrears returns members with 2+ missed contributions" do
    in_arrears = Member.in_arrears
    assert_includes in_arrears, members(:inactive_zainal)
    assert_not_includes in_arrears, members(:ahmad)
    assert_not_includes in_arrears, members(:siti)
  end
end
