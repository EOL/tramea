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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141022190532) do

  create_table "appearances", force: true do |t|
    t.integer  "name_id"
    t.integer  "publication_id"
    t.string   "page"
    t.string   "url_snippet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "article_sections", force: true do |t|
    t.integer "article_id"
    t.integer "section_id"
    t.boolean "primary"
  end

  add_index "article_sections", ["article_id"], name: "index_article_sections_on_article_id", using: :btree
  add_index "article_sections", ["section_id"], name: "index_article_sections_on_section_id", using: :btree

  create_table "articles", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "body"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles", ["guid"], name: "index_articles_on_guid", using: :btree

  create_table "on_pages", force: true do |t|
    t.string   "parent_type"
    t.integer  "parent_id"
    t.string   "content_type"
    t.integer  "content_id"
    t.boolean  "trusted"
    t.boolean  "reviewed"
    t.boolean  "visible"
    t.boolean  "overview"
    t.boolean  "original_name"
    t.integer  "position"
    t.float    "rating",        limit: 24
    t.integer  "num_ratings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "on_pages", ["content_type", "content_id"], name: "index_on_pages_on_content_type_and_content_id", using: :btree
  add_index "on_pages", ["parent_type", "parent_id"], name: "index_on_pages_on_parent_type_and_parent_id", using: :btree

  create_table "attributions", force: true do |t|
    t.string   "medium_type"
    t.integer  "medium_id"
    t.string   "who"
    t.string   "url"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attributions", ["medium_id"], name: "index_attributions_on_medium_id", using: :btree

  create_table "datasets", force: true do |t|
    t.integer  "partner_id"
    t.string   "name"
    t.string   "full_name"
    t.string   "abbr"
    t.text     "description"
    t.text     "private_notes"
    t.text     "admin_notes"
    t.string   "url"
    t.integer  "license_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "full_size_url"
    t.string   "crop_url"
    t.string   "thumbnail_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["guid"], name: "index_images_on_guid", using: :btree

  create_table "javascripts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "licenses", force: true do |t|
    t.integer  "type"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "partner_id"
    t.string   "name"
    t.string   "url"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "literature_references", force: true do |t|
    t.string   "parent_type"
    t.integer  "parent_id"
    t.string   "string"
    t.boolean  "bibliographic_citation"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "literature_references", ["parent_type", "parent_id"], name: "index_literature_references_on_parent_type_and_parent_id", using: :btree

  create_table "maps", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "full_size_url"
    t.string   "crop_url"
    t.string   "thumbnail_url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "maps", ["guid"], name: "index_maps_on_guid", using: :btree

  create_table "names", force: true do |t|
    t.string   "string"
    t.string   "location"
    t.integer  "type"
    t.integer  "locale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "node_hierarchies", id: false, force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "node_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "anc_desc_idx", unique: true, using: :btree
  add_index "node_hierarchies", ["descendant_id"], name: "desc_idx", using: :btree

  create_table "nodes", force: true do |t|
    t.integer  "partner_id"
    t.integer  "parent_id"
    t.integer  "page_id"
    t.integer  "rank"
    t.string   "original_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nodes", ["partner_id"], name: "index_nodes_on_partner_id", using: :btree
  add_index "nodes", ["page_id"], name: "index_nodes_on_page_id", using: :btree

  create_table "old_article_sections", force: true do |t|
    t.integer  "article_id"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_article_sections", ["article_id"], name: "index_old_article_sections_on_article_id", using: :btree
  add_index "old_article_sections", ["section_id"], name: "index_old_article_sections_on_section_id", using: :btree

  create_table "old_articles", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "body"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.integer  "article_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_articles", ["guid"], name: "index_old_articles_on_guid", using: :btree

  create_table "old_images", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.string   "string"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "full_size_url"
    t.string   "crop_url"
    t.string   "thumbnail_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_images", ["guid"], name: "index_old_images_on_guid", using: :btree

  create_table "old_maps", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "full_size_url"
    t.string   "crop_url"
    t.string   "thumbnail_url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_maps", ["guid"], name: "index_old_maps_on_guid", using: :btree

  create_table "old_sounds", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_sounds", ["guid"], name: "index_old_sounds_on_guid", using: :btree

  create_table "old_videos", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "old_videos", ["guid"], name: "index_old_videos_on_guid", using: :btree

  create_table "partners", force: true do |t|
    t.string   "name"
    t.string   "full_name"
    t.string   "abbr"
    t.text     "description"
    t.text     "private_notes"
    t.text     "admin_notes"
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "appearance_url_template"
    t.string   "details"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.integer  "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_hierarchies", id: false, force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "section_hierarchies", ["ancestor_id", "descendant_id", "generations"], name: "anc_desc_idx", unique: true, using: :btree
  add_index "section_hierarchies", ["descendant_id"], name: "desc_idx", using: :btree

  create_table "sections", force: true do |t|
    t.integer  "type"
    t.integer  "position"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sounds", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sounds", ["guid"], name: "index_sounds_on_guid", using: :btree

  create_table "stylesheets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.integer  "merged_to_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits", force: true do |t|
    t.integer  "metadata_for_id"
    t.integer  "predicate_uri_id"
    t.string   "value"
    t.string   "text"
    t.integer  "object_uri_id"
    t.integer  "units"
    t.integer  "original_units_uri_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "traits", ["metadata_for_id"], name: "index_traits_on_metadata_for_id", using: :btree

  create_table "translations", force: true do |t|
    t.string   "of_medium_type"
    t.integer  "of_medium_id"
    t.string   "to_medium_type"
    t.integer  "to_medium_id"
    t.string   "translated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations", ["of_medium_type", "of_medium_id"], name: "index_translations_on_of_medium_type_and_of_medium_id", using: :btree

  create_table "uri_sections", force: true do |t|
    t.integer "uri_id"
    t.integer "section_id"
    t.boolean "primary"
  end

  add_index "uri_sections", ["section_id"], name: "index_uri_sections_on_section_id", using: :btree
  add_index "uri_sections", ["uri_id"], name: "index_uri_sections_on_uri_id", using: :btree

  create_table "uri_translations", force: true do |t|
    t.integer  "uri_id",      null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
  end

  add_index "uri_translations", ["locale"], name: "index_uri_translations_on_locale", using: :btree
  add_index "uri_translations", ["uri_id"], name: "index_uri_translations_on_uri_id", using: :btree

  create_table "uris", force: true do |t|
    t.string   "string"
    t.integer  "position"
    t.boolean  "show_in_glossary"
    t.boolean  "important_metadata"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "guid"
    t.integer  "locale"
    t.string   "title"
    t.text     "description"
    t.string   "copyright"
    t.integer  "license_id"
    t.string   "original_url"
    t.string   "url"
    t.integer  "javascript_id"
    t.integer  "stylesheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["guid"], name: "index_videos_on_guid", using: :btree

end
