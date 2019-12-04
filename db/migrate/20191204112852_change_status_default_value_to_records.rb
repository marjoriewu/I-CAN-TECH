class ChangeStatusDefaultValueToRecords < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:records, :status, 0)
  end
end
