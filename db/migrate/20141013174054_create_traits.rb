class CreateTraits < ActiveRecord::Migration
  def change
    create_table :traits do |t|
      t.string :subject_type
      t.integer :subject_id
      t.string :original_predicate_name
      t.integer :predicate_uri_id
      t.string :value
      t.string :text
      t.integer :object_uri_id
      t.integer :units
      t.integer :original_units_uri_id

      t.timestamps
    end
    add_index :traits, [:subject_type, :subject_id]
  end
end
