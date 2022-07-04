# frozen_string_literal: true

class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.integer :member_id
      t.integer :instrument_id
      t.datetime :training_day
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
