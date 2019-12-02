class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.integer :category
      t.integer :priority
      t.string :instruction
      t.references :scenario, foreign_key: true

      t.timestamps
    end
  end
end
