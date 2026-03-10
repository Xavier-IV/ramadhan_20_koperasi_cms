module Impersonatable
  extend ActiveSupport::Concern

  included do
    helper_method :impersonating?, :true_user
  end

  private

  def current_user
    if impersonating?
      @_impersonated_user ||= User.find_by(id: session[:impersonated_user_id])
    else
      super
    end
  end

  def impersonating?
    session[:impersonated_user_id].present?
  end

  def true_user
    Current.session&.user
  end
end
