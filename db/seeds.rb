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
