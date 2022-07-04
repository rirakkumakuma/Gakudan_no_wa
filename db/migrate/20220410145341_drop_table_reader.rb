# frozen_string_literal: true

class DropTableReader < ActiveRecord::Migration[5.2]
  def change
    drop_table :representatives
  end
end
