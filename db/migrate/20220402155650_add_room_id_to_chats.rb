# frozen_string_literal: true

class AddRoomIdToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :room_id, :integer
  end
end
