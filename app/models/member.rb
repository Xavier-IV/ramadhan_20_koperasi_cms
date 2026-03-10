class Member < ApplicationRecord
  include Auditable

  has_many :contributions, dependent: :destroy
  has_many :loans, dependent: :destroy

  enum :status, { active: 0, inactive: 1 }, default: :active

  validates :name, presence: true
  validates :ic_number, presence: true, uniqueness: true
  validates :join_date, presence: true

  scope :active, -> { where(status: :active) }
  scope :inactive, -> { where(status: :inactive) }
  scope :in_arrears, -> {
    joins(:contributions)
      .where(contributions: { status: :missed })
      .group("members.id")
      .having("COUNT(contributions.id) >= 2")
  }

  before_create :generate_member_id
  before_create :generate_uuid

  def to_param = uuid

  private

  def generate_member_id
    return if member_id.present?

    last_num = Member.where("member_id LIKE 'KWB-%'")
                     .pluck(:member_id)
                     .map { |id| id.sub("KWB-", "").to_i }
                     .max || 0
    self.member_id = format("KWB-%03d", last_num + 1)
  end

  def generate_uuid
    self.uuid ||= SecureRandom.uuid
  end
end
