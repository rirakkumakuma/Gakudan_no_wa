class AddJoinFlagToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :join_flag, :boolean, default: false, null: false
  end
end
