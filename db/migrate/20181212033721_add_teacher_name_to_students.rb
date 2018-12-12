class AddTeacherNameToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :teacher_name, :string
  end
end
