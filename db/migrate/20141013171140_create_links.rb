class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :partner_id
      t.string :name
      t.string :url
      t.integer :position

      t.timestamps
    end
  end
end
