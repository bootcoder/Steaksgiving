json.array!(@steak_nights) do |steak_night|
  json.extract! steak_night, :id, :title, :night, :max_guests, :cover
  json.url steak_night_url(steak_night, format: :json)
end
