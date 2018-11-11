class AddCompletedAndUserIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :completed, :boolean, default: false, null: false
    add_column :tasks, :user_id, :integer
  end
end
