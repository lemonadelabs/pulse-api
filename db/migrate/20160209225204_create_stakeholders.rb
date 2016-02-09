class CreateStakeholders < ActiveRecord::Migration[5.0]
  def change
    create_table :stakeholders do |t|
      t.string :name
      t.text :image
      t.string :organisation
      t.string :role
      t.text :tags, array: true, default: []
      t.text :notes, array: true, default: []

      t.timestamps
    end
  end
end
