json.array!(@computer_geometries) do |computer_geometry|
  json.extract! computer_geometry, :id, :c_coordinates, :front_point, :computer_id
  json.url computer_geometry_url(computer_geometry, format: :json)
end
