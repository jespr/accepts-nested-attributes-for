class CreateDiveLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :dive_locations do |t|
      t.string :site_name
      t.string :location_type
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
