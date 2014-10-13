class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.integer :type
      t.attachment :icon

      t.timestamps
    end
  end
end
