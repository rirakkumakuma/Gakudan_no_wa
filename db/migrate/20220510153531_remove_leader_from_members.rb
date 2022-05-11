class RemoveLeaderFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :leader, :boolean
  end
end
