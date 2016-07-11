class CreateAuditoryGeometries < ActiveRecord::Migration
  def change
    create_table :auditory_geometries do |t|
      t.column :a_coordinates, :polygon, null: false
      t.references :auditory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
