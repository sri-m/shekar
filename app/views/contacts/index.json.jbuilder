json.array!(@contacts) do |contact|
  json.extract! contact, :name, :email, :cell, :address
  json.url contact_url(contact, format: :json)
end
