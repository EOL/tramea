class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :of_medium_type
      t.integer :of_medium_id
      t.string :to_medium_type
      t.integer :to_medium_id

      t.timestamps
    end
    add_index :translations, [:of_medium_type, :of_medium_id]
  end
end
