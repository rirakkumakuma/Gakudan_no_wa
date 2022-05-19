class AddOrchestraIdToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_column :instruments, :orchestra_id, :integer
  end
end
