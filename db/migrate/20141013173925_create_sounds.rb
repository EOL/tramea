class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :guid
      t.integer :locale
      t.boolean :preview
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
    add_index :sounds, :locale
  end
end
