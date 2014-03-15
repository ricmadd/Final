class CreateWbs3s < ActiveRecord::Migration
  def change
    create_table :wbs3s do |t|
      t.string :name
      t.integer :project_id
      t.integer :wbs2_id
      t.text :description
      t.timestamps
    end
  end
end
