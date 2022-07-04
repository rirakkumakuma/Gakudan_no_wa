# frozen_string_literal: true

class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.integer :member_id
      t.string :name

      t.timestamps
    end
  end
end
