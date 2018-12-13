class AddStudentNameToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :student_name, :string
  end
end
