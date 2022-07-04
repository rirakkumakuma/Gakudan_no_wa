# frozen_string_literal: true

class RenameLeaderColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :Leader, :leader
  end
end
