class CreateWbs2s < ActiveRecord::Migration
  def change
    create_table :wbs2s do |t|
      t.string :name
      t.integer :project_id
      t.integer :task_id
      t.text :description
      t.timestamps
    end
  end
end
