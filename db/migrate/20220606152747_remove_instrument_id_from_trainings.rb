class RemoveInstrumentIdFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :instrument_id, :integer
  end
end
