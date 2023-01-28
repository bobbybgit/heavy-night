json.extract! location, :id, :street_address, :city, :region, :country, :code, :longitude, :latitude, :created_at, :updated_at
json.url location_url(location, format: :json)
