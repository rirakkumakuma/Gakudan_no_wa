# frozen_string_literal: true

class AddOrchestraIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :orchestra_id, :integer
  end
end
