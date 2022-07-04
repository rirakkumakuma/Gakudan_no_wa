# frozen_string_literal: true

class RemoveAddressFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :address, :string
  end
end
