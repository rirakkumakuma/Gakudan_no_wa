class CreateOrchestras < ActiveRecord::Migration[5.2]
  def change
    create_table :orchestras do |t|
      t.string :orchestra_name
      t.integer :member_id
      t.timestamps
    end
  end
end
