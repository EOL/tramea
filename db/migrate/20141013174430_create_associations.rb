class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
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
    add_index :associations, [:parent_type, :parent_id]
    add_index :associations, [:child_type, :child_id]
  end
end
