class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :superceded_by_id
      t.timestamps
    end
  end
end
