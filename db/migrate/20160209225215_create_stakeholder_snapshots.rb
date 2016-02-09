class CreateStakeholderSnapshots < ActiveRecord::Migration[5.0]
  def change
    create_table :stakeholder_snapshots do |t|
      t.belongs_to :project, index: true
      t.belongs_to :stakeholder, index: true
      t.integer :week, index: true
      t.float :power
      t.float :support
      t.float :vital

      t.timestamps
    end
  end
end
