class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :nombre
      t.string :materia
      t.string :semestre

      t.timestamps
    end
  end
end
