class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true
      t.string :q1
      t.string :q2
      t.boolean :q3
      t.text :q4
      t.integer :q5
      t.string :q6
      t.string :q7
      t.boolean :q8
      t.string :q9
      t.text :q10

      t.timestamps
    end
  end
end
