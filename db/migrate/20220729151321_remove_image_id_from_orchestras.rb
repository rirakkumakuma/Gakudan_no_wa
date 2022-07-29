class RemoveImageIdFromOrchestras < ActiveRecord::Migration[5.2]
  def change
    remove_column :orchestras, :image_id, :string
  end
end
