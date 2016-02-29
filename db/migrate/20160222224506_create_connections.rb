class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.integer :week
      t.float :strength

      t.belongs_to :project
      t.belongs_to :stakeholder, index: true
      t.belongs_to :acquaintance, index: true

      t.timestamps
    end


  end
end
