# frozen_string_literal: true

class RemoveIsActiveFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :is_active, :integer
  end
end
