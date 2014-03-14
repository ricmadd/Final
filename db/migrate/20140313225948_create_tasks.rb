class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.integer :parenttask
      t.integer :wbslevel2
      t.integer :wbslevel3
      t.integer :wbslevel4
      t.text :description
      t.string :responsible
      t.integer :cost
      t.integer :progress
      t.timestamps
    end
  end
end
