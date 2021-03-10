class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :name
      t.string :ride_type
      t.string :meeting_location
      t.float :meeting_location_lat
      t.float :meeting_location_long
      t.string :start_time
      t.string :day_half
      t.string :day_of_week

      t.timestamps
    end
  end
end
