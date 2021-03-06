class CreateOldImages < ActiveRecord::Migration
  def change
    create_table :old_images do |t|
      t.string :guid
      t.integer :locale
      t.string :title
      t.text :description
      t.string :copyright
      t.string :string
      t.integer :license_id
      t.string :original_url
      t.string :full_size_url
      t.string :crop_url
      t.string :thumbnail_url

      t.timestamps
    end
    add_index :old_images, :guid
  end
end
