class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :client
      t.integer :timeframe
      t.string :time_format
      t.integer :total_stakeholders
      t.text :description

      t.timestamps
    end
  end
end
