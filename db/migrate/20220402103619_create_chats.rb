class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :member_id
      t.string :room_id
      t.timestamps
    end
  end
end
