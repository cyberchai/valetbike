json.extract! station_loc, :id, :name, :address, :latitude, :longitude, :created_at, :updated_at
json.url station_loc_url(station_loc, format: :json)
