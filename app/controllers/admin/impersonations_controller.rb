module Admin
  class ImpersonationsController < BaseController
    def create
      user = User.find(params[:user_id])
      session[:impersonated_user_id] = user.id
      redirect_to root_path, notice: "Now viewing as #{user.email_address}"
    end

    def destroy
      session.delete(:impersonated_user_id)
      redirect_to admin_root_path, notice: "Stopped impersonating."
    end
  end
end
