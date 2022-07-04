# frozen_string_literal: true

class DropTableRepresentatives < ActiveRecord::Migration[5.2]
  def change
    drop_table :representatives
  end
end
