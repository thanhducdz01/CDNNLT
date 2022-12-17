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

ActiveRecord::Schema[7.0].define(version: 2022_12_17_022631) do
  create_table "ql_tvs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "sv_id"
    t.string "sv_name"
    t.string "sv_class"
    t.string "sv_addr"
    t.date "sv_dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sv_duoctinh"
    t.string "sv_note"
    t.string "sv_place"
    t.index ["sv_id"], name: "index_ql_tvs_on_sv_id", unique: true
  end

end
