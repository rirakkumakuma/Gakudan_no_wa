# frozen_string_literal: true

class DropTableMemberRooms < ActiveRecord::Migration[5.2]
  def change
    drop_table :member_rooms
  end
end
