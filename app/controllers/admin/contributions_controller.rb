module Admin
  class ContributionsController < BaseController
    before_action :set_contribution, only: %i[show edit update destroy]

    def index
      @contributions = Contribution.includes(:member).order(year: :desc, month: :desc, created_at: :desc)
    end

    def show; end

    def new
      @contribution = Contribution.new(month: Date.current.month, year: Date.current.year)
      @members = Member.order(:name)
    end

    def create
      @contribution = Contribution.new(contribution_params)
      if @contribution.save
        redirect_to admin_contributions_path, notice: "Contribution created."
      else
        @members = Member.order(:name)
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @members = Member.order(:name)
    end

    def update
      if @contribution.update(contribution_params)
        redirect_to admin_contribution_path(@contribution), notice: "Contribution updated."
      else
        @members = Member.order(:name)
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @contribution.destroy
      redirect_to admin_contributions_path, notice: "Contribution deleted."
    end

    private

    def set_contribution
      @contribution = Contribution.find(params[:id])
    end

    def contribution_params
      params.require(:contribution).permit(:member_id, :amount, :month, :year, :paid_on, :status)
    end
  end
end
