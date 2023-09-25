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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_09_08_170802) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

=======
ActiveRecord::Schema[7.0].define(version: 2023_09_24_171416) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", null: false
    t.string "full_name"
    t.string "uid"
    t.string "avatar_url"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "event_logs", force: :cascade do |t|
    t.integer "hourlog_id"
    t.integer "user_id"
    t.integer "event_id"
    t.float "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "participating", default: true
  end

>>>>>>> 863e298e03e02d0c2723b380772f9571d4e2a37c
  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.time "time"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "avatar_url"
    t.string "uid"
    t.string "provider"
    t.datetime "remember_created_at"
    t.integer "access_level", default: 0
    t.string "first_name"
    t.string "last_name"
    t.string "major"
    t.integer "year"
    t.string "phone_number"
    t.boolean "registration_completed", default: false
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
