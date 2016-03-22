json.array!(@tiles) do |tile|
  json.extract! tile, :id, :x_index, :z_index, :terrain_name
  #json.url tile_url(tile, format: :json)
end
