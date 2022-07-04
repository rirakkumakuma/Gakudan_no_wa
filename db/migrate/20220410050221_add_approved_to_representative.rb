# frozen_string_literal: true

class AddApprovedToRepresentative < ActiveRecord::Migration[5.2]
  def self.up
    add_column :representatives, :approved, :boolean, default: false, null: false
    add_index  :representatives, :approved
  end

  def self.down
    remove_index  :representatives, :approved
    remove_column :representatives, :approved
  end
end
