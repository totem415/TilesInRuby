class OneOffs
	def self.randomize_tile_categories
		puts "___________________running randomize_tile_categories 6"

		Tile.all.each do |t|
			Tile.update(t.id, :category => "empty")
		end
		#Tile.save!
		puts "___________________running randomize_tile_categories 6"
	end
end