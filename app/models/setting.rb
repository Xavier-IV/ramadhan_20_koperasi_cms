class Setting < ApplicationRecord
  validates :koperasi_name, presence: true

  def self.current
    first_or_create!(koperasi_name: "Koperasi Warga Bahagia")
  end
end
