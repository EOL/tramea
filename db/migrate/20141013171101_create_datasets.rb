class CreatePartners < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.integer :partner_id
      t.string :name
      t.string :full_name
      t.string :abbr
      t.text :description
      t.text :private_notes
      t.text :admin_notes
      t.string :url
      t.integer :license_id

      t.timestamps
    end
  end
end
