class AddTasksCountToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :tasks_count, :integer, default: 0, null: false
  end
end
