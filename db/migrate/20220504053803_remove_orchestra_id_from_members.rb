# frozen_string_literal: true

class RemoveOrchestraIdFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :orchestra_id, :integer
  end
end
