class Announcement < ApplicationRecord
  has_rich_text :body

  enum :kind, { info: 0, warning: 1, maintenance: 2 }, default: :info

  validates :title, presence: true

  scope :active, -> {
    where(active: true)
      .where("starts_at IS NULL OR starts_at <= ?", Time.current)
      .where("ends_at IS NULL OR ends_at >= ?", Time.current)
  }
  scope :ordered, -> { order(created_at: :desc) }
end
