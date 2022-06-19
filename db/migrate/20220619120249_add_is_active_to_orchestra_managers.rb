class AddIsActiveToOrchestraManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :orchestra_managers, :is_active, :integer, default:0
  end
end
