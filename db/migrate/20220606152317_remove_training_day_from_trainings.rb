class RemoveTrainingDayFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :training_day, :datetime
  end
end
