class CreateOldArticleSections < ActiveRecord::Migration
  def change
    create_table :old_article_sections do |t|
      t.integer :article_id
      t.integer :section_id

      t.timestamps
    end
    add_index :old_article_sections, :article_id
    add_index :old_article_sections, :section_id
  end
end
