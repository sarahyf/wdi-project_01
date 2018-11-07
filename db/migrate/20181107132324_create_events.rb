class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :event_title
      t.string :description

      t.timestamps
    end
  end
end
