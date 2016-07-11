json.array!(@building_geometries) do |building_geometry|
  json.extract! building_geometry, :id, :b_coordinates, :building_id
  json.url building_geometry_url(building_geometry, format: :json)
end
