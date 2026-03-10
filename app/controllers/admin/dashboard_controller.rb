module Admin
  class DashboardController < BaseController
    def index
      @total_active_members = Member.active.count
      @total_contributions_this_month = Contribution.total_collected_this_month
      @members_in_arrears = Member.in_arrears.to_a
      @loans_missed_this_month = Loan.with_missed_repayment_this_month.includes(:member).to_a
    end
  end
end
