json.array!(@registrations) do |registration|
  json.extract! registration, :id, :name, :email, :encrypted_password
  json.url registration_url(registration, format: :json)
end
