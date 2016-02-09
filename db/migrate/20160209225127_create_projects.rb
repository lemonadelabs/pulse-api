class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :client
      t.integer :timeframe
      t.string :timeFormat
      t.integer :totalStakeholders
      t.text :projectOverview

      t.timestamps
    end
  end
end
