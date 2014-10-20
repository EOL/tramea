class CreateArticleSections < ActiveRecord::Migration
  def change
    create_table :article_sections do |t|
      t.integer :article_id
      t.integer :section_id
      t.boolean :primary
    end
    add_index :article_sections, :article_id
    add_index :article_sections, :section_id
  end
end
