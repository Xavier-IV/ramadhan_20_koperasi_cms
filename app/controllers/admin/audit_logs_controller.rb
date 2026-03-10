module Admin
  class AuditLogsController < BaseController
    def index
      @audit_logs = AuditLog.recent
        .by_action(params[:action_filter])
        .page(params[:page])
        .includes(:user)
      @total_count = AuditLog.recent.by_action(params[:action_filter]).count
      @current_page = [ params[:page].to_i, 1 ].max
    end
  end
end
