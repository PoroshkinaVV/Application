json.array!(@auditories) do |auditory|
  json.extract! auditory, :id, :name, :building_id
  json.url auditory_url(auditory, format: :json)
end
