# frozen_string_literal: true

class RemoveTrainingDayFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :training_day, :datetime
  end
end
