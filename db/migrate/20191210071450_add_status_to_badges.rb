class AddStatusToBadges < ActiveRecord::Migration[5.2]
  def change
    add_column :badges, :obtained, :boolean, default: false
  end
end
