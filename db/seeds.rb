# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#def self.generate_tiles_in_the_board




puts "_______________generate_terrain beginning 2"
texturelist = [
	"symmetrical_multicolor",
	"turquoise",
	"quartz",
	"grass_leafy",
	"symmetrical_red",
	"volcanic",
	"amethyst",
	"moonscape_1",
	"dirt_wavy",
	"dirt_sparse_pebbles",
	"desert_sandy",
	"pebbles",
	"desert_cracked_gray",
	"moonscape_2",
	"desert_cracked_brown",
	"grass_stylized"
]
puts "texturelist.count: #{texturelist.count}"

texturelist.each_with_index do |texture, index|
	t = Terrain.create(name: texture, art_index: index)
	puts "texture: #{texture} index: #{index}}"
end
# t = Terrain.create(name: "pattern1", art_index:0)



puts "_______________generate_tiles beginning 7"

ttlTextures = Terrain.count;


for i in 0..99
	for j in 0..49
		tname = Terrain.all[rand(ttlTextures)].name
		t = Tile.create(x_index: i, z_index: j, terrain_name: tname)
		puts "adding tile x_index: #{t.x_index} z_index: #{t.z_index} terrain_name: #{t.terrain_name}"
	end
end