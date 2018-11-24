class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :fName
      t.string :lName
      t.string :mName
      t.integer :grade
      t.string :email
      t.integer :phone
      t.integer :homeroom_teacher

      t.timestamps
    end
  end
end
