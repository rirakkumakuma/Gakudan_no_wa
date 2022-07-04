# frozen_string_literal: true

class CreateOrchestraManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :orchestra_managers do |t|
      t.integer :member_id
      t.integer :orchestra_id
      t.timestamps
    end
  end
end
