class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :url
      t.string :appearance_url_template
      t.string :details
      t.string :year

      t.timestamps
    end
  end
end
