class LoanRepayment < ApplicationRecord
  include Auditable

  belongs_to :loan

  validates :amount,  numericality: { greater_than: 0 }
  validates :paid_on, presence: true

  after_create :auto_settle_loan

  private

  def auto_settle_loan
    loan.update!(status: :settled) if loan.outstanding_balance <= 0
  end
end
