class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.belongs_to :stakeholder_snapshot, index: true
      t.float :power
      t.float :support
      t.float :vital

      t.timestamps
    end
  end
end
