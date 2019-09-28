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

ActiveRecord::Schema.define(version: 2019_09_28_092005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_slips", force: :cascade do |t|
    t.bigint "delayed_installment_id", null: false
    t.datetime "due_date"
    t.float "value"
    t.float "fee"
    t.float "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["delayed_installment_id"], name: "index_bank_slips_on_delayed_installment_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "external_id"
    t.string "customer_name"
    t.string "customer_email"
    t.string "customer_cpf"
    t.float "loan_value"
    t.integer "payment_term"
    t.string "realty_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_installments", force: :cascade do |t|
    t.bigint "contract_id", null: false
    t.string "contract_eid"
    t.string "installment_index"
    t.datetime "due_date"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_delayed_installments_on_contract_id"
  end

  add_foreign_key "bank_slips", "delayed_installments"
  add_foreign_key "delayed_installments", "contracts"
end
