class CreateSynths < ActiveRecord::Migration
  def change
    create_table :synths do |t|
      t.integer :superceded_by_id
      t.timestamps
    end
  end
end
