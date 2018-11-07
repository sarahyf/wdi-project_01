class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.datetime :start_time
      t.string :description

      t.timestamps
    end
  end
end
