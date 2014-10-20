class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :of_medium_type
      t.integer :of_medium_id
      t.string :to_medium_type
      t.integer :to_medium_id
      # NOTE: It's important to show the translator VERY clearly and preserve
      # the original attribution on the data object itself.
      t.string :translated_by

      t.timestamps
    end
    add_index :translations, [:of_medium_type, :of_medium_id]
  end
end
