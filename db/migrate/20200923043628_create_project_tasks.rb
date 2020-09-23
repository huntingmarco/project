class CreateProjectTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :project_tasks do |t|
      t.string :content
      t.datetime :deadline
      t.string :myfile
      t.references :project_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
