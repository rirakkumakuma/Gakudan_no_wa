class AddTrainingDayIdToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :training_day_id, :integer
  end
end
