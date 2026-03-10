class Loan < ApplicationRecord
  include Auditable

  belongs_to :member
  has_many :loan_repayments, dependent: :destroy

  enum :status, { active: 0, settled: 1 }, default: :active

  validates :amount,            numericality: { greater_than: 0 }
  validates :monthly_repayment, numericality: { greater_than: 0 }
  validates :approved_date,     presence: true

  scope :active,   -> { where(status: :active) }
  scope :settled,  -> { where(status: :settled) }

  scope :with_missed_repayment_this_month, -> {
    month_range = Date.today.beginning_of_month..Date.today.end_of_month
    active.where.not(
      id: joins(:loan_repayments)
            .where(loan_repayments: { paid_on: month_range })
            .select("loans.id")
    )
  }

  before_create :generate_uuid

  def to_param = uuid

  def outstanding_balance
    amount - loan_repayments.sum(:amount)
  end

  private

  def generate_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
