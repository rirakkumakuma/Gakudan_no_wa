# frozen_string_literal: true

class ChangeColumnDefaultToMembers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :members, :is_active, from: nil, to: '0'
  end
end
