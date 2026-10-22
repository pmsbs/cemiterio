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

ActiveRecord::Schema[8.1].define(version: 2026_10_22_110236) do
  create_table "deceaseds", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "date_of_death"
    t.string "date_of_birth"
    t.text "observation"
    t.integer "plot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_deceaseds_on_cpf", unique: true
    t.index ["plot_id"], name: "index_deceaseds_on_plot_id"
    t.index ["rg"], name: "index_deceaseds_on_rg", unique: true
  end

  create_table "plots", force: :cascade do |t|
    t.text "observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deceaseds", "plots"
end
