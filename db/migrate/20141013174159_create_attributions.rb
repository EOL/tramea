class CreateAttributions < ActiveRecord::Migration
  def change
    create_table :attributions do |t|
      t.string :medium_type
      t.integer :medium_id
      t.string :who
      t.string :url
      t.integer :role_id

      t.timestamps
    end
    add_index :attributions, :medium_id
  end
end
