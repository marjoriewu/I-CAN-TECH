class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :status
      t.references :user, foreign_key: true
      t.references :scenario, foreign_key: true

      t.timestamps
    end
  end
end
