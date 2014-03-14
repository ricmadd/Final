class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :manager
      t.string :client
      t.string :location
      t.text :description
      t.integer :contractvalue
      t.integer :progress
      t.timestamps
    end
  end
end
