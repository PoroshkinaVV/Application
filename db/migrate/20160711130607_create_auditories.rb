class CreateAuditories < ActiveRecord::Migration
  def change
    create_table :auditories do |t|
      t.string :name, null: false
      t.references :floor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
