class RenameCategoryToTerrain < ActiveRecord::Migration
  def change
  	rename_column Tile, :category, :terrain_name
  end
end
