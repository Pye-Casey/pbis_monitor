# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_16_182643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "behaviors", force: :cascade do |t|
    t.integer "student_id"
    t.date "event_date"
    t.time "event_time"
    t.integer "grade"
    t.integer "staff_id"
    t.string "location"
    t.string "minor_behavior"
    t.string "major_behavior"
    t.string "motivation"
    t.string "admin_action"
    t.boolean "time_in_office"
    t.boolean "loss_privilege"
    t.boolean "conference_with_student"
    t.boolean "parent_contact"
    t.boolean "time_out_detention"
    t.boolean "restitution_community_service"
    t.boolean "individualized_instruction"
    t.boolean "counselor"
    t.boolean "in_school_suspension"
    t.boolean "out_school_suspension"
    t.boolean "expulsion"
    t.boolean "involved_none"
    t.boolean "involved_peers"
    t.boolean "involved_staff"
    t.boolean "involved_teacher"
    t.boolean "involved_substitute"
    t.string "peers_involved"
    t.string "staff_involved"
    t.string "teachers_involved"
    t.string "subsitutes_involved"
    t.string "antecedent"
    t.string "behavior_description"
    t.string "due_process"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.string "mName"
    t.integer "grade"
    t.string "email"
    t.integer "phone"
    t.integer "homeroom_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.string "mName"
    t.string "role"
    t.integer "gradeTaught"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.string "mName"
    t.integer "grade"
    t.string "email"
    t.integer "phone"
    t.integer "homeroom_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
