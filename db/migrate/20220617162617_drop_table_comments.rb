# frozen_string_literal: true

class DropTableComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
  end
end
