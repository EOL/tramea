class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :partner_id
      t.integer :parent_id
      t.integer :page_id
      t.integer :rank
      t.string :original_id

      t.timestamps
    end
    add_index :nodes, :partner_id
    add_index :nodes, :page_id
  end
end
