class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :full_name
      t.string :abbr
      t.text :description
      t.text :private_notes
      t.text :admin_notes
      t.attachment :icon
      t.string :url

      t.timestamps
    end
  end
end
