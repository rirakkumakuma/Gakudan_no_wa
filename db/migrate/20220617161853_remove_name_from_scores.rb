class RemoveNameFromScores < ActiveRecord::Migration[5.2]
  def change
    remove_column :scores, :instrument_id, :integer
  end
end
