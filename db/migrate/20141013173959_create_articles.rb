class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :guid
      t.integer :locale
      t.string :title
      t.text :body
      t.string :copyright
      t.integer :license_id
      t.string :original_url
      t.integer :javascript_id
      t.integer :stylesheet_id

      t.timestamps
    end
    add_index :articles, :guid
  end
end
