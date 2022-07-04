# frozen_string_literal: true

class RemoveTelephoneNumberFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :telephone_number, :string
  end
end
