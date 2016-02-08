json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :hotel_name, :location
  json.url hotel_url(hotel, format: :json)
end
