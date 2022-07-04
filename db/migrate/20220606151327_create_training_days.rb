# frozen_string_literal: true

class CreateTrainingDays < ActiveRecord::Migration[5.2]
  def change
    create_table :training_days do |t|
      t.integer :orchestra_id
      t.datetime :training_day
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
