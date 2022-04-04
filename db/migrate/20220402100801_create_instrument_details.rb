class CreateInstrumentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :instrument_details do |t|
      t.integer :member_id
      t.integer :instrument_id
      t.timestamps
    end
  end
end
