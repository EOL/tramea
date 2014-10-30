class CreateUris < ActiveRecord::Migration
  def up
    create_table :uris do |t|
      t.string :string
      t.integer :position
      t.boolean :show_in_glossary
      t.boolean :important_metadata

      t.timestamps
    end
    Uri.create_translation_table! name: :string, description: :text
  end
  def down
    drop_table :uris
    Uri.drop_translation_table!
  end
end
