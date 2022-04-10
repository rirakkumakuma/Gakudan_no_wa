class CreateRepresentatives < ActiveRecord::Migration[5.2]
  def change
    create_table :representatives do |t|
      t.integer :orchestra_id
      t.string :email
      t.string :password
      t.boolean :is_deleted,default: true,null: false

      t.timestamps
    end
  end
end
