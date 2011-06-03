# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110509041152) do

  create_table "areas", :force => true do |t|
    t.string   "name",       :limit => 60
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name",       :limit => 60
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_histories", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_infos", :force => true do |t|
    t.string   "title",      :limit => 100
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_spirits", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "name",       :limit => 60
    t.string   "tel",        :limit => 60
    t.string   "fax",        :limit => 60
    t.string   "address",    :limit => 150
    t.string   "email",      :limit => 60
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "downloads", :force => true do |t|
    t.string   "title",               :limit => 100, :default => "", :null => false
    t.text     "desc",                                               :null => false
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "en_pdf_file_name"
    t.string   "en_pdf_content_type"
    t.integer  "en_pdf_file_size"
    t.datetime "en_pdf_updated_at"
  end

  create_table "end_products", :force => true do |t|
    t.string   "name",                      :limit => 60
    t.text     "end_product_desc"
    t.integer  "middle_product_id"
    t.string   "end_file_name"
    t.string   "end_content_type"
    t.integer  "end_file_size"
    t.datetime "end_updated_at"
    t.string   "end_photo_file_name"
    t.string   "end_photo_content_type"
    t.integer  "end_photo_file_size"
    t.datetime "end_photo_updated_at"
    t.string   "tech_pdf_file_name"
    t.string   "tech_pdf_content_type"
    t.integer  "tech_pdf_file_size"
    t.datetime "tech_pdf_updated_at"
    t.string   "spec_pdf_file_name"
    t.string   "spec_pdf_content_type"
    t.integer  "spec_pdf_file_size"
    t.datetime "spec_pdf_updated_at"
    t.string   "en_end_file_name"
    t.string   "en_end_content_type"
    t.integer  "en_end_file_size"
    t.datetime "en_end_updated_at"
    t.string   "en_end_photo_file_name"
    t.string   "en_end_photo_content_type"
    t.integer  "en_end_photo_file_size"
    t.datetime "en_end_photo_updated_at"
    t.string   "en_tech_pdf_file_name"
    t.string   "en_tech_pdf_content_type"
    t.integer  "en_tech_pdf_file_size"
    t.datetime "en_tech_pdf_updated_at"
    t.string   "en_spec_pdf_file_name"
    t.string   "en_spec_pdf_content_type"
    t.integer  "en_spec_pdf_file_size"
    t.datetime "en_spec_pdf_updated_at"
  end

  create_table "handlers", :force => true do |t|
    t.string   "name",        :limit => 80
    t.string   "abbr",        :limit => 60
    t.string   "address",     :limit => 80
    t.string   "tel",         :limit => 60
    t.integer  "city_id"
    t.string   "headquarter", :limit => 60
    t.string   "depart",      :limit => 60
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "middle_products", :force => true do |t|
    t.string   "name",                         :limit => 60
    t.text     "middle_product_desc"
    t.integer  "top_product_id"
    t.string   "middle_photo_file_name"
    t.string   "middle_photo_content_type"
    t.integer  "middle_photo_file_size"
    t.datetime "middle_photo_updated_at"
    t.string   "en_middle_photo_file_name"
    t.string   "en_middle_photo_content_type"
    t.integer  "en_middle_photo_file_size"
    t.datetime "en_middle_photo_updated_at"
  end

  create_table "stick_teches", :force => true do |t|
    t.string   "title",      :limit => 100, :default => "", :null => false
    t.text     "body",                                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "top_products", :force => true do |t|
    t.string   "name",                      :limit => 60
    t.text     "top_product_desc"
    t.string   "top_photo_file_name"
    t.string   "top_photo_content_type"
    t.integer  "top_photo_file_size"
    t.datetime "top_photo_updated_at"
    t.string   "en_top_photo_file_name"
    t.string   "en_top_photo_content_type"
    t.integer  "en_top_photo_file_size"
    t.datetime "en_top_photo_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
