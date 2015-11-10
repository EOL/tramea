class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :merged_to_id
      t.timestamps
      t.string :scientific_name
      t.string :common_names_json
    end
  end
end
