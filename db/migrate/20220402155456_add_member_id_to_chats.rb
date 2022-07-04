# frozen_string_literal: true

class AddMemberIdToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :member_id, :integer
  end
end
