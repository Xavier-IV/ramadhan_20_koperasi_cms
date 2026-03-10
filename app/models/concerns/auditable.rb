module Auditable
  extend ActiveSupport::Concern

  included do
    has_many :audit_logs, as: :auditable, dependent: :nullify
    after_create_commit :log_create
    after_update_commit :log_update
    after_destroy_commit :log_destroy
  end

  private

  def log_create
    log_audit("created")
  end

  def log_update
    log_audit("updated", changes: previous_changes.except("updated_at"))
  end

  def log_destroy
    log_audit("deleted")
  end

  def log_audit(action, metadata = {})
    return unless Current.respond_to?(:session) && Current.session&.user

    AuditLog.log(
      user: Current.session.user,
      action: action,
      auditable: self,
      metadata: metadata
    )
  rescue => e
    Rails.logger.warn "AuditLog failed: #{e.message}"
  end
end
