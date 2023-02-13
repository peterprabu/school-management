# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_13_073310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "course_id", null: false
    t.index ["course_id"], name: "index_batches_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "school_id", null: false
    t.index ["school_id"], name: "index_courses_on_school_id"
  end

  create_table "enrolment_requests", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "batch_id", null: false
    t.string "status", default: "pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_id"
    t.index ["batch_id"], name: "index_enrolment_requests_on_batch_id"
    t.index ["course_id"], name: "index_enrolment_requests_on_course_id"
  end

  create_table "enrolments", force: :cascade do |t|
    t.string "number"
    t.datetime "date"
    t.bigint "student_id", null: false
    t.bigint "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "batch_id", null: false
    t.index ["batch_id"], name: "index_enrolments_on_batch_id"
    t.index ["course_id"], name: "index_enrolments_on_course_id"
    t.index ["student_id"], name: "index_enrolments_on_student_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "city"
    t.string "country"
    t.string "contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "id_card_number"
    t.integer "age"
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "school_id", null: false
    t.string "email"
    t.index ["school_id"], name: "index_students_on_school_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batches", "courses"
  add_foreign_key "courses", "schools"
  add_foreign_key "enrolment_requests", "batches"
  add_foreign_key "enrolment_requests", "courses"
  add_foreign_key "enrolments", "batches"
  add_foreign_key "enrolments", "courses"
  add_foreign_key "enrolments", "students"
  add_foreign_key "students", "schools"
end
