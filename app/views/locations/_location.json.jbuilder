json.extract! location, :id, :name, :description, :coordinates, :created_at, :updated_at
json.url location_url(location, format: :json)
