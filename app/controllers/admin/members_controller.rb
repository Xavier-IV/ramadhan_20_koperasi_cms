module Admin
  class MembersController < BaseController
    before_action :set_member, only: %i[show edit update destroy]

    def index
      @members = Member.order(:member_id)
    end

    def show; end

    def new
      @member = Member.new(join_date: Date.current)
    end

    def create
      @member = Member.new(member_params)
      if @member.save
        redirect_to admin_members_path, notice: "Member created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit; end

    def update
      if @member.update(member_params)
        redirect_to admin_member_path(@member), notice: "Member updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @member.destroy
      redirect_to admin_members_path, notice: "Member deleted."
    end

    private

    def set_member
      @member = Member.find_by!(uuid: params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :ic_number, :phone, :address, :join_date, :status)
    end
  end
end
