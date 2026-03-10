module Admin
  class LoansController < BaseController
    before_action :set_loan, only: %i[show edit update destroy]

    def index
      @loans = Loan.includes(:member, :loan_repayments).order(approved_date: :desc)
    end

    def show
      @repayments = @loan.loan_repayments.order(paid_on: :desc)
    end

    def new
      @loan = Loan.new(approved_date: Date.current)
      @members = Member.active.order(:name)
    end

    def create
      @loan = Loan.new(loan_params)
      if @loan.save
        redirect_to admin_loan_path(@loan), notice: "Loan created."
      else
        @members = Member.active.order(:name)
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @members = Member.active.order(:name)
    end

    def update
      if @loan.update(loan_params)
        redirect_to admin_loan_path(@loan), notice: "Loan updated."
      else
        @members = Member.active.order(:name)
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @loan.destroy
      redirect_to admin_loans_path, notice: "Loan deleted."
    end

    private

    def set_loan
      @loan = Loan.find_by!(uuid: params[:id])
    end

    def loan_params
      params.require(:loan).permit(:member_id, :amount, :approved_date, :monthly_repayment, :status)
    end
  end
end
