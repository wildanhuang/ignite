class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table :surveys do |t|
      t.boolean   :sex
      t.integer   :age
      t.integer   :read_bible
      t.boolean   :porn
      t.boolean   :porn_addict
      t.boolean   :masturbate
      t.boolean   :masturbate_addict
      t.boolean   :sexual

      t.timestamps
    end
  end
end
