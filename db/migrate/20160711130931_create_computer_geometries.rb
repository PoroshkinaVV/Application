class CreateComputerGeometries < ActiveRecord::Migration
  def change
    create_table :computer_geometries do |t|
      t.column :c_coordinates, :polygon, null: false
      t.integer :front_point, null: false
      t.references :computer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
