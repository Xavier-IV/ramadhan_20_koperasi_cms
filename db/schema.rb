# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_10_141538) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.datetime "updated_at", null: false
    t.index [ "record_type", "record_id", "name" ], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index [ "blob_id" ], name: "index_active_storage_attachments_on_blob_id"
    t.index [ "record_type", "record_id", "name", "blob_id" ], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index [ "key" ], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index [ "blob_id", "variation_digest" ], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "announcements", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "ends_at"
    t.integer "kind", default: 0, null: false
    t.datetime "starts_at"
    t.string "title", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audit_logs", force: :cascade do |t|
    t.string "action", null: false
    t.string "auditable_id"
    t.string "auditable_type", null: false
    t.datetime "created_at", null: false
    t.jsonb "metadata", default: {}
    t.bigint "user_id", null: false
    t.index [ "action" ], name: "index_audit_logs_on_action"
    t.index [ "auditable_type", "auditable_id" ], name: "index_audit_logs_on_auditable_type_and_auditable_id"
    t.index [ "created_at" ], name: "index_audit_logs_on_created_at"
    t.index [ "user_id" ], name: "index_audit_logs_on_user_id"
  end

  create_table "contributions", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.bigint "member_id", null: false
    t.integer "month", null: false
    t.date "paid_on"
    t.integer "status", default: 0, null: false
    t.datetime "updated_at", null: false
    t.integer "year", null: false
    t.index [ "member_id", "month", "year" ], name: "index_contributions_on_member_id_and_month_and_year", unique: true
    t.index [ "member_id" ], name: "index_contributions_on_member_id"
  end

  create_table "loan_repayments", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.bigint "loan_id", null: false
    t.text "notes"
    t.date "paid_on", null: false
    t.datetime "updated_at", null: false
    t.index [ "loan_id" ], name: "index_loan_repayments_on_loan_id"
  end

  create_table "loans", force: :cascade do |t|
    t.decimal "amount", precision: 10, scale: 2, null: false
    t.date "approved_date", null: false
    t.datetime "created_at", null: false
    t.bigint "member_id", null: false
    t.decimal "monthly_repayment", precision: 10, scale: 2, null: false
    t.integer "status", default: 0, null: false
    t.datetime "updated_at", null: false
    t.string "uuid"
    t.index [ "member_id" ], name: "index_loans_on_member_id"
    t.index [ "uuid" ], name: "index_loans_on_uuid", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.text "address"
    t.datetime "created_at", null: false
    t.string "ic_number", null: false
    t.date "join_date", null: false
    t.string "member_id", null: false
    t.string "name", null: false
    t.string "phone"
    t.integer "status", default: 0, null: false
    t.datetime "updated_at", null: false
    t.string "uuid", null: false
    t.index [ "ic_number" ], name: "index_members_on_ic_number", unique: true
    t.index [ "member_id" ], name: "index_members_on_member_id", unique: true
    t.index [ "uuid" ], name: "index_members_on_uuid", unique: true
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "ip_address"
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.bigint "user_id", null: false
    t.index [ "user_id" ], name: "index_sessions_on_user_id"
  end

  create_table "settings", force: :cascade do |t|
    t.text "address"
    t.datetime "created_at", null: false
    t.string "email"
    t.string "koperasi_name", default: "Koperasi Warga Bahagia", null: false
    t.string "phone"
    t.string "registration_number"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin", default: false, null: false
    t.datetime "created_at", null: false
    t.string "email_address", null: false
    t.string "password_digest", null: false
    t.datetime "updated_at", null: false
    t.index [ "email_address" ], name: "index_users_on_email_address", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "audit_logs", "users"
  add_foreign_key "contributions", "members"
  add_foreign_key "loan_repayments", "loans"
  add_foreign_key "loans", "members"
  add_foreign_key "sessions", "users"
end
