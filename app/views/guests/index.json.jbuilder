json.array!(@guests) do |guest|
  json.extract! guest, :id, :guest_first_name, :guest_last_name, :guest_email, :guest_phone, :guest_address, :password_digest
  json.url guest_url(guest, format: :json)
end
