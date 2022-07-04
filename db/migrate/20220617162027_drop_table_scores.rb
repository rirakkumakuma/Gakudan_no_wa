# frozen_string_literal: true

class DropTableScores < ActiveRecord::Migration[5.2]
  def change
    drop_table :scores
  end
end
