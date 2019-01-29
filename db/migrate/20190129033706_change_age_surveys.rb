class ChangeAgeSurveys < ActiveRecord::Migration[5.2]
  def change
    change_column :surveys, :age, :string
  end
end
