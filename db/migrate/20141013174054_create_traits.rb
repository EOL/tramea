class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.integer :metadata_for_id
      t.integer :predicate_uri_id
      t.string :value
      t.string :text
      t.integer :object_uri_id
      t.integer :units
      t.integer :original_units_uri_id

      t.timestamps
    end
    add_index :traits, :metadata_for_id
  end
end
