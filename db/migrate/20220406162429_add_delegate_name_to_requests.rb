class AddDelegateNameToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :name, :string
  end
end
