class CreateSynths < ActiveRecord::Migration
  def change
    create_table :synths do |t|

      t.timestamps
    end
  end
end
