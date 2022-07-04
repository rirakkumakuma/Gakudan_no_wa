# frozen_string_literal: true

class AddLeaderToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :Leader, :boolean, default: false, null: false
  end
end
