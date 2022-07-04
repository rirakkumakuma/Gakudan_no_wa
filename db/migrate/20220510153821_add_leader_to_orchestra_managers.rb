# frozen_string_literal: true

class AddLeaderToOrchestraManagers < ActiveRecord::Migration[5.2]
  def change
    add_column :orchestra_managers, :leader, :boolean
  end
end
