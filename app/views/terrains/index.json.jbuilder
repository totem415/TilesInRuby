json.array!(@terrains) do |terrain|
  json.extract! terrain, :id, :name, :art_index
  #json.url terrain_url(terrain, format: :json)
end
