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

ActiveRecord::Schema.define(:version => 20110926061803) do

  create_table "display_settings", :force => true do |t|
    t.string   "header_font"
    t.integer  "header_font_size"
    t.string   "body_font"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "display_settings", ["profile_id"], :name => "index_display_settings_on_profile_id"

  create_table "links_lists", :force => true do |t|
    t.string   "twitter_url"
    t.string   "facebook_url"
    t.string   "tumblr_url"
    t.string   "flickr_url"
    t.string   "yelp_url"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links_lists", ["profile_id"], :name => "index_links_lists_on_profile_id"

  create_table "photos", :force => true do |t|
    t.string   "image"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["profile_id"], :name => "index_photos_on_profile_id"

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "zipcode"
    t.date     "birthday"
    t.string   "ethnicity"
    t.string   "education"
    t.string   "job"
    t.string   "height"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

  add_index "profiles", ["slug"], :name => "index_profiles_on_slug", :unique => true
  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "question_answers", :force => true do |t|
    t.text     "body"
    t.integer  "profile_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_answers", ["profile_id", "question_id"], :name => "index_question_answers_on_profile_id_and_question_id", :unique => true

  create_table "questions", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
