class CreateOldArticles < ActiveRecord::Migration
  def change
    create_table :old_articles do |t|
      t.string :guid
      t.integer :locale
      t.boolean :preview
      t.integer :section_id
      t.string :title
      t.text :body
      t.string :copyright
      t.integer :license_id
      t.string :original_url
      t.integer :javascript_id
      t.integer :stylesheet_id
      t.integer :article_id

      t.timestamps
    end
  end
end
