class CreateSectionsUris < ActiveRecord::Migration
  def change
    create_table :sections_uris do |t|
      t.integer :uri_id
      t.integer :section_id
    end
    add_index :sections_uris, :uri_id
    add_index :sections_uris, :section_id
  end
end
