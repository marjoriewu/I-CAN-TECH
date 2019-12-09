class ChangeColumnNameToSteps < ActiveRecord::Migration[5.2]
  def change
    rename_column :steps, :instruction, :question
  end
end
