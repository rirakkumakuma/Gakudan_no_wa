# frozen_string_literal: true

class RemoveRoomIdFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :room_id, :string
  end
end
