class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :source_id
      t.integer :parent_id
      t.integer :synth_id
      t.string :original_id

      t.timestamps
    end
    add_index :nodes, :source_id
    add_index :nodes, :synth_id
  end
end