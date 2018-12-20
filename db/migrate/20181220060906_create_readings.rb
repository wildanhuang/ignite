class CreateReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :readings do |t|
      t.integer :user_id
      t.integer :spirit_charge_id

      t.timestamps
    end
    add_index :readings, :user_id
    add_index :readings, :spirit_charge_id
  end
end
