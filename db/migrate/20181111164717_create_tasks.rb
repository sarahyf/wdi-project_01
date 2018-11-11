class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.date :task_date
      t.string :task_title

      t.timestamps
    end
  end
end
