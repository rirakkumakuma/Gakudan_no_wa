class ChangeColumnDefaultToOrchestraManagers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :orchestra_managers, :leader, from: nil, to: false
  end
end
