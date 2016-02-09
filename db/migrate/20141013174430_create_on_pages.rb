class CreateOnPages < ActiveRecord::Migration
  def change
    create_table :on_pages do |t|
      t.integer :page_id
      t.string :content_type
      t.integer :content_id
      t.boolean :trusted, default: true
      t.boolean :reviewed, default: false
      t.boolean :hidden, default: false
      t.boolean :preview, default: true
      t.integer :source_page_id, null: false
      t.integer :position
      t.float :rating
      t.integer :num_ratings

      t.timestamps
    end
    add_index :on_pages, :page_id
    add_index :on_pages, [:content_type, :content_id]
  end
end
