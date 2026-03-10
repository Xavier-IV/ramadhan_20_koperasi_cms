# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# insert_all! intentionally bypasses callbacks (no audit logs in seed)
unless Setting.exists?
  now = Time.current
  Setting.insert_all!([ {
    koperasi_name: "Koperasi Warga Bahagia",
    registration_number: "KWB-2019-001",
    phone: "03-2345 6789",
    email: "admin@kwb.org.my",
    address: "No. 10, Jalan Harmoni 3, Taman Bahagia, 50480 Kuala Lumpur",
    created_at: now,
    updated_at: now
  } ])
end

# Members
# insert_all! bypasses callbacks — member_ids and uuids are pre-assigned
members_data = [
  { member_id: "KWB-001", uuid: SecureRandom.uuid, name: "Ahmad Bin Abdullah", ic_number: "800101-14-5001",
    phone: "011-2345678", address: "12, Jalan Bahagia, Kuala Lumpur",
    join_date: Date.parse("2020-01-15"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-002", uuid: SecureRandom.uuid, name: "Siti Binti Mohd Noor", ic_number: "850505-08-6002",
    phone: "012-3456789", address: "45, Lorong Maju, Petaling Jaya",
    join_date: Date.parse("2020-02-01"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-003", uuid: SecureRandom.uuid, name: "Chong Wei Liang", ic_number: "790312-10-7003",
    phone: "013-4567890", address: "78, Jalan Damai, Klang",
    join_date: Date.parse("2020-03-10"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-004", uuid: SecureRandom.uuid, name: "Muthu A/L Ramasamy", ic_number: "820616-07-8004",
    phone: "014-5678901", address: "23, Jalan Sejahtera, Shah Alam",
    join_date: Date.parse("2020-04-20"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-005", uuid: SecureRandom.uuid, name: "Nur Aisyah Binti Zainudin", ic_number: "900902-06-9005",
    phone: "015-6789012", address: "9, Taman Harmoni, Subang Jaya",
    join_date: Date.parse("2020-05-15"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-006", uuid: SecureRandom.uuid, name: "Tan Ah Kow", ic_number: "751225-11-0006",
    phone: "016-7890123", address: "56, Jalan Wawasan, Ampang",
    join_date: Date.parse("2020-06-01"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-007", uuid: SecureRandom.uuid, name: "Rajesh A/L Krishnan", ic_number: "880404-12-1007",
    phone: "017-8901234", address: "34, Lorong Indah, Cheras",
    join_date: Date.parse("2021-01-10"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-008", uuid: SecureRandom.uuid, name: "Faridah Binti Hassan", ic_number: "920808-03-2008",
    phone: "018-9012345", address: "67, Jalan Mulia, Kajang",
    join_date: Date.parse("2021-03-20"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-009", uuid: SecureRandom.uuid, name: "Lim Boon Seng", ic_number: "830707-10-3009",
    phone: "019-0123456", address: "11, Taman Pelangi, Selayang",
    join_date: Date.parse("2021-06-15"), status: 0, created_at: Time.current, updated_at: Time.current },
  { member_id: "KWB-010", uuid: SecureRandom.uuid, name: "Zainal Bin Abidin", ic_number: "870303-14-4010",
    phone: "011-1234567", address: "88, Jalan Setia, Rawang",
    join_date: Date.parse("2022-01-01"), status: 1, created_at: Time.current, updated_at: Time.current }
]
Member.insert_all!(members_data)

# Contributions - 3 months: Jan/Feb/Mar 2025
# Pattern: Ahmad/Siti/Chong/Faridah/Lim paid all 3; Muthu missed Feb;
#          Nur missed Jan+Feb (IN ARREARS); Tan paid Jan only (missed Feb+Mar);
#          Rajesh missed Jan+Feb (IN ARREARS); Zainal missed all 3
contribution_amount = 50.00
contribution_rows = []

members_paid_all    = %w[KWB-001 KWB-002 KWB-003 KWB-008 KWB-009]
members_missed_feb  = %w[KWB-004]
members_in_arrears1 = %w[KWB-005]
members_in_arrears2 = %w[KWB-007]
members_partial     = %w[KWB-006]
members_inactive    = %w[KWB-010]

[
  [ 1, 2025 ], [ 2, 2025 ], [ 3, 2025 ]
].each do |month, year|
  Member.find_each do |member|
    mid = member.member_id
    status = :paid
    if members_missed_feb.include?(mid) && month == 2
      status = :missed
    elsif (members_in_arrears1.include?(mid) || members_in_arrears2.include?(mid)) && (month == 1 || month == 2)
      status = :missed
    elsif members_partial.include?(mid) && month != 1
      status = :missed
    elsif members_inactive.include?(mid)
      status = :missed
    end

    paid_on = status == :paid ? Date.new(year, month, 10) : nil
    contribution_rows << {
      member_id: member.id,
      amount: contribution_amount,
      month: month,
      year: year,
      paid_on: paid_on,
      status: Contribution.statuses[status],
      created_at: Time.current,
      updated_at: Time.current
    }
  end
end
# insert_all! bypasses callbacks - no audit log entries in seeds
Contribution.insert_all!(contribution_rows)

# Loans and repayments
# insert_all! intentionally bypasses callbacks (no auto_settle in seed)
loan_rows = [
  {
    member_id: Member.find_by!(member_id: "KWB-001").id,
    amount: 5000.00, approved_date: Date.new(2025, 1, 15),
    monthly_repayment: 500.00, status: 0, uuid: SecureRandom.uuid,
    created_at: Time.current, updated_at: Time.current
  },
  {
    member_id: Member.find_by!(member_id: "KWB-002").id,
    amount: 10000.00, approved_date: Date.new(2025, 1, 20),
    monthly_repayment: 1000.00, status: 0, uuid: SecureRandom.uuid,
    created_at: Time.current, updated_at: Time.current
  },
  {
    member_id: Member.find_by!(member_id: "KWB-003").id,
    amount: 3000.00, approved_date: Date.new(2025, 2, 1),
    monthly_repayment: 300.00, status: 0, uuid: SecureRandom.uuid,
    created_at: Time.current, updated_at: Time.current
  }
]
Loan.insert_all!(loan_rows)

repayment_rows = []
ahmad_loan = Loan.find_by!(member: Member.find_by!(member_id: "KWB-001"))
siti_loan  = Loan.find_by!(member: Member.find_by!(member_id: "KWB-002"))
chong_loan = Loan.find_by!(member: Member.find_by!(member_id: "KWB-003"))

# Ahmad: 3 repayments of RM500
[ [ 2025, 1, 10 ], [ 2025, 2, 10 ], [ 2025, 3, 10 ] ].each do |y, m, d|
  repayment_rows << { loan_id: ahmad_loan.id, amount: 500.00, paid_on: Date.new(y, m, d),
                       notes: nil, created_at: Time.current, updated_at: Time.current }
end
# Siti: 2 repayments of RM1000
[ [ 2025, 1, 15 ], [ 2025, 2, 15 ] ].each do |y, m, d|
  repayment_rows << { loan_id: siti_loan.id, amount: 1000.00, paid_on: Date.new(y, m, d),
                       notes: nil, created_at: Time.current, updated_at: Time.current }
end
# Chong: 1 repayment of RM300
repayment_rows << { loan_id: chong_loan.id, amount: 300.00, paid_on: Date.new(2025, 2, 20),
                     notes: nil, created_at: Time.current, updated_at: Time.current }

LoanRepayment.insert_all!(repayment_rows)
