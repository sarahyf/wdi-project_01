class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.datetime :start_time
      t.string :task_title
      t.string :description

      t.timestamps
    end
  end
end
