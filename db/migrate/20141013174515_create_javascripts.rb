class CreateJavascripts < ActiveRecord::Migration
  def change
    create_table :javascripts do |t|
      t.string :name

      t.timestamps
    end
  end
end
