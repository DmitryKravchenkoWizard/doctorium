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

ActiveRecord::Schema.define(version: 2022_09_01_174152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinic_achievements", force: :cascade do |t|
    t.integer "achievement_type", null: false
    t.string "name", default: "", null: false
    t.string "details", default: ""
    t.string "year", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "clinic_id"
    t.index ["clinic_id"], name: "index_clinic_achievements_on_clinic_id"
  end

  create_table "clinic_doctors", force: :cascade do |t|
    t.integer "clinic_id"
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_id"], name: "index_clinic_doctors_on_clinic_id"
    t.index ["doctor_id"], name: "index_clinic_doctors_on_doctor_id"
  end

  create_table "clinic_reviews", force: :cascade do |t|
    t.integer "clinic_id", null: false
    t.integer "patient_id", null: false
    t.integer "review_type", null: false
    t.string "text", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["clinic_id"], name: "index_clinic_reviews_on_clinic_id"
    t.index ["patient_id"], name: "index_clinic_reviews_on_patient_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "subscription_plan", default: ""
    t.integer "user_id", null: false
    t.string "photo", default: ""
    t.string "website", default: ""
    t.string "whatsapp", default: ""
    t.string "twitter", default: ""
    t.string "instagram", default: ""
    t.string "youtube", default: ""
    t.string "linkedin", default: ""
    t.string "about", default: ""
    t.string "areas_of_expertise", default: ""
    t.string "utm_source", default: ""
    t.string "utm_medium", default: ""
    t.string "utm_campaign", default: ""
    t.string "utm_term", default: ""
    t.string "utm_content", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctor_achievements", force: :cascade do |t|
    t.integer "achievement_type", null: false
    t.string "name", default: "", null: false
    t.string "details", default: ""
    t.string "year", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "doctor_id"
    t.index ["doctor_id"], name: "index_doctor_achievements_on_doctor_id"
  end

  create_table "doctor_reviews", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.string "review_type", default: "", null: false
    t.string "text", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_doctor_reviews_on_doctor_id"
    t.index ["patient_id"], name: "index_doctor_reviews_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "surname", default: "", null: false
    t.integer "user_id", null: false
    t.string "photo", default: ""
    t.string "website", default: ""
    t.string "whatsapp", default: ""
    t.string "twitter", default: ""
    t.string "instagram", default: ""
    t.string "youtube", default: ""
    t.string "linkedin", default: ""
    t.string "about", default: ""
    t.string "areas_of_expertise", default: ""
    t.string "utm_source", default: ""
    t.string "utm_medium", default: ""
    t.string "utm_campaign", default: ""
    t.string "utm_term", default: ""
    t.string "utm_content", default: ""
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "profession_id"
    t.index ["profession_id"], name: "index_doctors_on_profession_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "surname", default: "", null: false
    t.string "country", default: "", null: false
    t.string "gender", default: "", null: false
    t.string "photo", default: ""
    t.date "date_of_birth", null: false
    t.string "time_zone", default: ""
    t.string "language", default: ""
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "role_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clinic_achievements", "clinics"
  add_foreign_key "doctor_achievements", "doctors"
  add_foreign_key "doctors", "professions"
end
