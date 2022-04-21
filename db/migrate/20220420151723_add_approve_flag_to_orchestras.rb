class AddApproveFlagToOrchestras < ActiveRecord::Migration[5.2]
  def change
    add_column :orchestras, :approve_flag, :boolean, default: false, null: false
  end
end
