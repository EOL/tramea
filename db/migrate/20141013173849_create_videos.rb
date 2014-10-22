class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :guid
      t.integer :locale
      t.string :title
      t.text :description
      t.string :copyright
      t.integer :license_id
      t.string :original_url
      t.string :url
      t.integer :javascript_id
      t.integer :stylesheet_id

      t.timestamps
    end
    add_index :videos, :guid
  end
end
