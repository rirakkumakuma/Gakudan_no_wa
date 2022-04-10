class AddEmailToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :email, :string
  end
end
