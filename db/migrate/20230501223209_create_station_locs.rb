class CreateStationLocs < ActiveRecord::Migration[7.0]
  def change
    create_table :station_locs do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index :station_locs, :latitude
    add_index :station_locs, :longitude
  end
end
