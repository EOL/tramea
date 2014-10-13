class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :guid
      t.integer :locale
      t.boolean :preview
      t.string :title
      t.text :description
      t.string :copyright
      t.integer :license_id
      t.string :original_url
      t.string :full_size_url
      t.string :crop_url
      t.string :thumbnail_url

      t.timestamps
    end
    add_index :images, :locale
  end
end
