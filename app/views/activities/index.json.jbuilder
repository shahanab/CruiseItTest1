json.array!(@activities) do |activity|
  json.extract! activity, :id, :poi_id, :itinerary_id, :start_time
  json.url activity_url(activity, format: :json)
end
