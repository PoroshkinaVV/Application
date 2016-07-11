json.array!(@desks) do |desk|
  json.extract! desk, :id, :name, :auditory_id
  json.url desk_url(desk, format: :json)
end
