class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.integer :source_id
      t.integer :parent_id
      t.string :original_id

      t.timestamps
    end
    add_index :concepts, :source_id
  end
end
