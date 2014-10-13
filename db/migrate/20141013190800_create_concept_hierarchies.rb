class CreateConceptHierarchies < ActiveRecord::Migration
  def change
    create_table :concept_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :concept_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "anc_desc_idx"

    add_index :concept_hierarchies, [:descendant_id],
      name: "desc_idx"
  end
end
