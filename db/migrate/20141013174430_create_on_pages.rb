class CreateOnPages < ActiveRecord::Migration
  def change
    create_table :on_pages do |t|
      t.integer :page_id
      t.string :content_type
      t.integer :content_id
      t.boolean :trusted
      t.boolean :reviewed
      t.boolean :visible
      t.boolean :overview
      t.boolean :original_name
      t.integer :position
      t.float :rating
      t.integer :num_ratings

      t.timestamps
    end
    add_index :on_pages, :page_id
    add_index :on_pages, [:content_type, :content_id]
  end
end
