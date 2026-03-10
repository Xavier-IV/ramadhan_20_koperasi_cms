class Contribution < ApplicationRecord
  include Auditable

  belongs_to :member

  enum :status, { paid: 0, missed: 1 }, default: :paid

  validates :amount, numericality: { greater_than: 0 }
  validates :month, inclusion: { in: 1..12 }
  validates :year, numericality: { greater_than: 2000 }
  validates :member_id, uniqueness: { scope: %i[month year],
    message: "already has a contribution for this month/year" }

  scope :paid, -> { where(status: :paid) }
  scope :missed, -> { where(status: :missed) }
  scope :for_month, ->(month, year) { where(month: month, year: year) }

  def self.total_collected_this_month
    for_month(Date.today.month, Date.today.year).paid.sum(:amount)
  end
end
