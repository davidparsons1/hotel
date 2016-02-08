json.array!(@room_types) do |room_type|
  json.extract! room_type, :id, :room_type_id, :image, :breakfast, :hotel_id
  json.url room_type_url(room_type, format: :json)
end
