class CreateRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :relationships do |t|
      t.belongs_to :stakeholder_snapshot
      t.belongs_to :stakeholder
      t.float :strength

      t.timestamps
    end
  end
end
