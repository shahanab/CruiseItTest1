json.array!(@pois) do |poi|
  json.extract! poi, :id, :description
  json.url poi_url(poi, format: :json)
end
