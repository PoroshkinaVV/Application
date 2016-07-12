json.array!(@floor_geometries) do |floor_geometry|
  json.extract! floor_geometry, :id, :f_coordinates, :floor_id
  json.url floor_geometry_url(floor_geometry, format: :json)
end
