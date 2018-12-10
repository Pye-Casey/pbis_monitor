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

ActiveRecord::Schema.define(version: 2018_12_09_022017) do

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
    t.string "minor_other"
    t.string "major_other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "get_peer_attention"
    t.boolean "get_adult_attention"
    t.boolean "get_items_activities"
    t.boolean "avoid_task"
    t.boolean "avoid_peer"
    t.boolean "avoid_adult"
    t.boolean "minor_language"
    t.boolean "minor_contact"
    t.boolean "minor_defiance"
    t.boolean "minor_disruption"
    t.boolean "minor_property"
    t.boolean "minor_dress"
    t.boolean "minor_technology"
    t.boolean "minor_tardy"
    t.boolean "major_language"
    t.boolean "major_aggression"
    t.boolean "major_disrespect"
    t.boolean "major_habitual_disruption"
    t.boolean "major_dishonesty"
    t.boolean "major_harrassment"
    t.boolean "major_tardies"
    t.boolean "major_vandalism"
    t.boolean "major_theft"
    t.boolean "major_dress_code"
    t.boolean "major_drugs"
    t.boolean "major_weapons"
    t.boolean "admin_time_office"
    t.boolean "admin_loss_privilege"
    t.boolean "admin_conference_student"
    t.boolean "admin_parent_contact"
    t.boolean "admin_detention"
    t.boolean "admin_service"
    t.boolean "admin_individual_instruction"
    t.boolean "admin_counselor"
    t.boolean "admin_in_school_suspension"
    t.boolean "admin_suspension"
    t.boolean "admin_expulsion"
    t.string "admin_other"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.string "role"
    t.integer "gradeTaught"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_staffs_on_email", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string "fName"
    t.string "lName"
    t.integer "grade"
    t.integer "homeroom_teacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
