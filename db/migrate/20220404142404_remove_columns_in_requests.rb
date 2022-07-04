# frozen_string_literal: true

class RemoveColumnsInRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :first_name, :string
    remove_column :requests, :last_name, :string
    remove_column :requests, :first_name_kana, :string
    remove_column :requests, :last_name_kana, :string
    add_column :requests, :name, :string
  end
end
