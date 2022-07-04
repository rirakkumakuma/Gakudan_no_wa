# frozen_string_literal: true

class RemoveTitleFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :title, :integer
  end
end
