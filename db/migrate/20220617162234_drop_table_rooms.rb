# frozen_string_literal: true

class DropTableRooms < ActiveRecord::Migration[5.2]
  def change
    drop_table :rooms
  end
end
