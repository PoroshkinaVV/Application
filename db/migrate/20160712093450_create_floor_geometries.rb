class CreateFloorGeometries < ActiveRecord::Migration
  def change
    create_table :floor_geometries do |t|
      t.column :f_coordinates, :polygon, presence: true
      t.references :floor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
