class CreateTerrains < ActiveRecord::Migration
  def change
    create_table :terrains do |t|
      t.string :name
      t.integer :art_index

      t.timestamps null: false
    end
  end
end
