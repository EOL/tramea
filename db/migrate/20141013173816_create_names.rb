class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :string
      t.string :location
      t.integer :type
      t.integer :locale

      t.timestamps
    end
  end
end
