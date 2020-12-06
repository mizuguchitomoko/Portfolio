class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
