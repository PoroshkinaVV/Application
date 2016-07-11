class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :name, null: false
      t.references :desk, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
