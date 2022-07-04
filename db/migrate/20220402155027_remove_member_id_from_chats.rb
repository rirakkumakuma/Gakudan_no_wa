# frozen_string_literal: true

class RemoveMemberIdFromChats < ActiveRecord::Migration[5.2]
  def change
    remove_column :chats, :member_id, :string
  end
end
