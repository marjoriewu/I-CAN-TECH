class AddColumnToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :steps, :right_answer, :integer
  end
end
