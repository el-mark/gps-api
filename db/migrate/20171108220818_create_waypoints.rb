class CreateWaypoints < ActiveRecord::Migration[5.1]
  def change
    create_table :waypoints do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :sent_at
      t.string :vehicle_identifier

      t.timestamps
    end
  end
end
