json.array!(@rooms) do |room|
  json.extract! room, :id, :room_type_id, :floor, :streetview
  json.url room_url(room, format: :json)
end
