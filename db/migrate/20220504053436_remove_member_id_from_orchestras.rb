# frozen_string_literal: true

class RemoveMemberIdFromOrchestras < ActiveRecord::Migration[5.2]
  def change
    remove_column :orchestras, :member_id, :integer
  end
end
