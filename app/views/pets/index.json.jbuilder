json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :species_id
  json.url pet_url(pet, format: :json)
end
