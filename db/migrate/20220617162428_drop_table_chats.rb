class DropTableChats < ActiveRecord::Migration[5.2]
  def change
    drop_table :chats
  end
end
