class CreateCollectionAttributions < ActiveRecord::Migration
  def change
    create_table :collection_attributions do |t|
      t.integer :medium_type
      t.integer :medium_id
      t.string :who
      t.string :url
      t.integer :role_id

      t.timestamps
    end
    add_index :collection_attributions, :medium_id
  end
end
