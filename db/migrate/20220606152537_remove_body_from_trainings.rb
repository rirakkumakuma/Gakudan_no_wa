class RemoveBodyFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :body, :text
  end
end
