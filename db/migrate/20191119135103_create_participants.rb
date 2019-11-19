class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string    :name
      t.string    :email
      t.string    :line_id
      t.string    :phone
      t.string    :code

      t.timestamps
    end
  end
end
