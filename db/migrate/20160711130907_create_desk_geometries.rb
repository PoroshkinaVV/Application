class CreateDeskGeometries < ActiveRecord::Migration
  def change
    create_table :desk_geometries do |t|
      t.column :d_coordinates, :polygon, null: false
      t.integer :front_point, null: false
      t.references :desk, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
