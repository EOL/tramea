class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :name_id
      t.integer :publication_id
      t.string :page
      t.string :url_snippet

      t.timestamps
    end
  end
end
