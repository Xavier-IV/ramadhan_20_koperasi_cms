module Admin
  class LoanRepaymentsController < BaseController
    before_action :set_loan

    def new
      @repayment = @loan.loan_repayments.new(
        amount: @loan.monthly_repayment,
        paid_on: Date.current
      )
    end

    def create
      @repayment = @loan.loan_repayments.new(repayment_params)
      if @repayment.save
        redirect_to admin_loan_path(@loan), notice: "Repayment recorded."
      else
        render :new, status: :unprocessable_entity
      end
    end

    private

    def set_loan
      @loan = Loan.find_by!(uuid: params[:loan_id])
    end

    def repayment_params
      params.require(:loan_repayment).permit(:amount, :paid_on, :notes)
    end
  end
end
