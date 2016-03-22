class OneOffs
	
	# RAC Not currently used.  This is all handled in db/seeds.rb
	#  I'll leave this here as an example since the one-off structure is set up to run
	def self.randomize_tile_categories
		puts "___________________running randomize_tile_categories 6"

		Tile.all.each do |t|
			Tile.update(t.id, :category => "empty")
		end
		#Tile.save!
		puts "___________________running randomize_tile_categories 6"
	end


end