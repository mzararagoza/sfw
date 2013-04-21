# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130421135536) do

  create_table "admins", :force => true do |t|
    t.string   "first_name",             :default => "",   :null => false
    t.string   "last_name",              :default => "",   :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.boolean  "active",                 :default => true, :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "admins", ["authentication_token"], :name => "index_admins_on_authentication_token", :unique => true
  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "exams", :force => true do |t|
    t.integer  "girl_id"
    t.string   "date_perform"
    t.string   "drug_test_results_on_site"
    t.string   "drug_test_results_lab"
    t.string   "insurance_billed_amount"
    t.string   "insurance_billed_date"
    t.string   "amount_paid"
    t.string   "date_paid"
    t.string   "insurance_company"
    t.string   "benzodiazeipines"
    t.string   "barbituates"
    t.string   "cocaine"
    t.string   "tetrahydrocannabinol"
    t.string   "methamphetamines"
    t.string   "opiates"
    t.string   "maximum_tolerated_dose"
    t.string   "tricyclic_antidepressants"
    t.string   "oxycodone"
    t.string   "phencyclidine"
    t.string   "amphetamines"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "expenses", :force => true do |t|
    t.integer  "admin_id"
    t.integer  "vendor_id"
    t.decimal  "amount",       :precision => 8, :scale => 2
    t.datetime "payment_date"
    t.string   "payment_type"
    t.text     "note"
    t.string   "pdf_upload"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "girls", :force => true do |t|
    t.string   "first_name",                      :default => ""
    t.string   "middle_name",                     :default => ""
    t.string   "last_name",                       :default => ""
    t.string   "social_security",                 :default => ""
    t.string   "dob",                             :default => ""
    t.string   "address",                         :default => ""
    t.string   "address2",                        :default => ""
    t.string   "city",                            :default => ""
    t.string   "state",                           :default => ""
    t.string   "zip",                             :default => ""
    t.string   "phone",                           :default => ""
    t.boolean  "is_taking_medication",            :default => false
    t.string   "list_dosage",                     :default => ""
    t.string   "clean_date",                      :default => ""
    t.string   "drugs_of_choice",                 :default => ""
    t.string   "emergency_contact1_first_name",   :default => ""
    t.string   "emergency_contact1_last_name",    :default => ""
    t.string   "emergency_contact1_phone",        :default => ""
    t.string   "emergency_contact1_relation",     :default => ""
    t.string   "emergency_contact2_first_name",   :default => ""
    t.string   "emergency_contact2_last_name",    :default => ""
    t.string   "emergency_contact2_phone",        :default => ""
    t.string   "emergency_contact2_relation",     :default => ""
    t.string   "insurance_provider",              :default => ""
    t.string   "group_code",                      :default => ""
    t.string   "policy_number",                   :default => ""
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "email",                           :default => ""
    t.boolean  "active",                          :default => true
    t.string   "arrival_date",                    :default => ""
    t.string   "departure_date",                  :default => ""
    t.string   "referral_source",                 :default => ""
    t.string   "referral_phone_number",           :default => ""
    t.string   "insurance_provider_phone_number", :default => ""
    t.boolean  "clean_urine_upon_arriva",         :default => true
    t.string   "photo",                           :default => ""
    t.string   "drivers_license",                 :default => ""
    t.string   "sponsor_first_name",              :default => ""
    t.string   "sponsor_last_name",               :default => ""
    t.string   "sponsor_phone",                   :default => ""
    t.string   "opportunities_rules",             :default => ""
    t.string   "aa_meeting_sheet",                :default => ""
    t.string   "release_of_liability",            :default => ""
    t.string   "opportunities_intake_form",       :default => ""
    t.string   "opportunities_relapse_plan",      :default => ""
    t.string   "sober_inc",                       :default => ""
    t.string   "reason_for_leaving",              :default => ""
  end

  create_table "notes", :force => true do |t|
    t.integer  "girl_id"
    t.integer  "admin_id"
    t.text     "note"
    t.string   "consequence"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "girl_id"
    t.decimal  "amount",         :precision => 8, :scale => 2
    t.string   "payment_date",                                 :default => ""
    t.string   "payment_type"
    t.text     "note"
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.string   "payment_method",                               :default => ""
    t.string   "payment_number",                               :default => ""
  end

  create_table "vacations", :force => true do |t|
    t.integer  "girl_id"
    t.string   "issued_date"
    t.string   "departure_date"
    t.string   "return_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "vendors", :force => true do |t|
    t.string   "first_name",   :default => ""
    t.string   "last_name",    :default => ""
    t.string   "address",      :default => ""
    t.string   "address2",     :default => ""
    t.string   "city",         :default => ""
    t.string   "state",        :default => ""
    t.string   "zip",          :default => ""
    t.string   "phone_number", :default => ""
    t.string   "email",        :default => ""
    t.text     "description",  :default => ""
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
