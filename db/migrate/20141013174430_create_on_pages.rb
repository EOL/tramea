class CreateOnPages < ActiveRecord::Migration
  def change
    create_table :on_pages do |t|
      t.string :parent_type
      t.integer :parent_id
      t.string :child_type
      t.integer :child_id
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
    add_index :on_pages, [:parent_type, :parent_id]
    add_index :on_pages, [:child_type, :child_id]
  end
end
