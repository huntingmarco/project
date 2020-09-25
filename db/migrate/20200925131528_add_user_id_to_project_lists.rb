class AddUserIdToProjectLists < ActiveRecord::Migration[6.0]
  def change
    add_column :project_lists, :user_id, :integer
  end
end
