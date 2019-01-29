class AddUserSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :user_id, :integer
  end
end
