class CreateUriSections < ActiveRecord::Migration
  def change
    create_table :uri_sections do |t|
      t.integer :uri_id
      t.integer :section_id
      t.boolean :primary
    end
    add_index :uri_sections, :uri_id
    add_index :uri_sections, :section_id
  end
end
