# frozen_string_literal: true

class RemoveNameFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :name, :string
  end
end
