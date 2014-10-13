class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :string
      t.integer :type
      t.integer :locale
      t.boolean :preview

      t.timestamps
    end
    add_index :names, :locale
  end
end
