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

ActiveRecord::Schema.define(:version => 20130906141443) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "admin_users_roles", :id => false, :force => true do |t|
    t.integer "admin_user_id"
    t.integer "role_id"
  end

  add_index "admin_users_roles", ["admin_user_id", "role_id"], :name => "index_admin_users_roles_on_admin_user_id_and_role_id"

  create_table "codegens", :force => true do |t|
    t.string   "name"
    t.integer  "mark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dai_lies", :force => true do |t|
    t.string   "name"
    t.text     "diachi"
    t.string   "email"
    t.string   "sdt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "admin_user_id"
  end

  create_table "dai_ly_quan_lies", :force => true do |t|
    t.string   "dai_ly_id"
    t.string   "print_manager_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "admin_user_id"
  end

  create_table "dangki_phattems", :force => true do |t|
    t.string   "name"
    t.integer  "luong_sp"
    t.integer  "luong_lo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doanh_nghieps", :force => true do |t|
    t.string   "name"
    t.string   "viet_tat"
    t.string   "ma_so_thue"
    t.text     "dia_chi"
    t.integer  "dien_thoai"
    t.string   "phap_ly"
    t.string   "giao_dich"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "admin_user_id"
  end

  create_table "error_messages", :force => true do |t|
    t.string   "name"
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lo_capnhats", :force => true do |t|
    t.string   "lo_id"
    t.string   "lo_status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.string   "ptype_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "phat_tems", :force => true do |t|
    t.string   "PIN"
    t.string   "Lo"
    t.string   "san_pham_id"
    t.string   "doanh_nghiep_id"
    t.string   "dai_ly_quan_ly_id"
    t.string   "tem_type"
    t.string   "kh"
    t.string   "so_kh"
    t.string   "sdt"
    t.string   "lo_status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "print_managers", :force => true do |t|
    t.string   "package_id"
    t.string   "codegen_id"
    t.string   "ptype"
    t.string   "printed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ptypes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "san_phams", :force => true do |t|
    t.string   "doanh_nghiep_id"
    t.string   "ma_cap_phep"
    t.string   "name"
    t.date     "ngay_cap"
    t.string   "xuat_xu"
    t.string   "so_luong"
    t.text     "sms_trave"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "admin_user_id"
  end

  create_table "smsdbs", :force => true do |t|
    t.string   "sodienthoai"
    t.string   "error"
    t.string   "pin"
    t.string   "lo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
