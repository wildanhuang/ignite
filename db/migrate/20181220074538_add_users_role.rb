class AddUsersRole < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string, defalut: 'user'
  end
end
