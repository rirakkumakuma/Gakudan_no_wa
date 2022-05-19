class RemoveMemberIdFromInstruments < ActiveRecord::Migration[5.2]
  def change
    remove_column :instruments, :member_id, :integer
  end
end
