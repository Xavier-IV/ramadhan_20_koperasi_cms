module Admin
  class BaseController < ApplicationController
    layout "admin"

    before_action :require_admin

    private
      def require_admin
        user = respond_to?(:true_user, true) && true_user ? true_user : current_user
        redirect_to root_path, alert: "Not authorized." unless user&.admin?
      end
  end
end
