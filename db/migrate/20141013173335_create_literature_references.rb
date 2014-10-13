class CreateLiteratureReferences < ActiveRecord::Migration
  def change
    create_table :literature_references do |t|
      t.string :parent_type
      t.integer :parent_id
      t.string :string

      t.timestamps
    end
    add_index :literature_references, [:parent_type, :parent_id]
  end
end
