class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :date
      t.time :start_time
      t.time :ending_time

      t.timestamps
    end
  end
end
