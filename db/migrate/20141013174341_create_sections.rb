class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :type
      t.integer :position
      t.integer :parent_id

      t.timestamps
    end
  end
end
