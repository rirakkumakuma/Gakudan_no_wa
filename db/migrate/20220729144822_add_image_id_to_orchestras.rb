class AddImageIdToOrchestras < ActiveRecord::Migration[5.2]
  def change
    add_column :orchestras, :image_id, :string
  end
end
