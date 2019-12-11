class RenameUserFirstNameToUsername < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_name, :user_name
  end
end
