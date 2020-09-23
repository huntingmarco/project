class AddDoneAtToProjectTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :project_tasks, :done_at, :datetime
  end
end
