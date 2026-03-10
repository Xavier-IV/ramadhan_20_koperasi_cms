module Admin
  class SettingsController < BaseController
    def edit
      @setting = Setting.current
    end

    def update
      @setting = Setting.current
      if @setting.update(setting_params)
        redirect_to edit_admin_setting_path, notice: "Settings updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    private

    def setting_params
      params.require(:setting).permit(:koperasi_name, :registration_number, :phone, :email, :address)
    end
  end
end
