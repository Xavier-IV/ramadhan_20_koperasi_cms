class AuditLog < ApplicationRecord
  belongs_to :user
  belongs_to :auditable, polymorphic: true, optional: true

  validates :action, presence: true, inclusion: { in: %w[created updated deleted] }

  scope :recent, -> { order(created_at: :desc) }
  scope :by_action, ->(action) { where(action: action) if action.present? }
  scope :page, ->(page, per: 25) {
    page = [page.to_i, 1].max
    offset((page - 1) * per).limit(per)
  }

  def self.log(user:, action:, auditable:, metadata: {})
    create!(
      user: user,
      action: action,
      auditable_type: auditable.class.name,
      auditable_id: auditable.id.to_s,
      metadata: metadata
    )
  end
end
