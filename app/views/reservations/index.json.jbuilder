json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :room_id, :check_in, :check_out, :guest_id
  json.url reservation_url(reservation, format: :json)
end
