class CreateStylesheets < ActiveRecord::Migration
  def change
    create_table :stylesheets do |t|
      t.string :name

      t.timestamps
    end
  end
end
