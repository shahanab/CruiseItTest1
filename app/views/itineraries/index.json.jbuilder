json.array!(@itineraries) do |itinerary|
  json.extract! itinerary, :id, :description
  json.url itinerary_url(itinerary, format: :json)
end
