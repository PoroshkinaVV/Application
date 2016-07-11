json.array!(@desk_geometries) do |desk_geometry|
  json.extract! desk_geometry, :id, :d_coordinates, :front_point, :desk_id
  json.url desk_geometry_url(desk_geometry, format: :json)
end
