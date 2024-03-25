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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_172313) do
  create_table "accounts", force: :cascade do |t|
    t.string "subdomain"
    t.string "owner_email"
    t.integer "plan_id"
    t.datetime "signed_up_at"
    t.index ["plan_id"], name: "index_accounts_on_plan_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_orders_on_account_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.integer "monthly_price"
  end

end
