class CreateBuildingGeometries < ActiveRecord::Migration
  def change
    create_table :building_geometries do |t|
      t.column :b_coordinates, :polygon, null: false
      t.references :building, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
