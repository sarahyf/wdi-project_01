class RemoveTaskDateFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_date, :date
  end
end
