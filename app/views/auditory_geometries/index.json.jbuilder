json.array!(@auditory_geometries) do |auditory_geometry|
  json.extract! auditory_geometry, :id, :a_coordinates, :auditory_id
  json.url auditory_geometry_url(auditory_geometry, format: :json)
end
