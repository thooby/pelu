json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :last_name, :phone, :email, :address_1, :address_2, :city, :state, :zip, :country, :comments
  json.url person_url(person, format: :json)
end
