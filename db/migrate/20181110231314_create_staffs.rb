class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :fName
      t.string :lName
      t.string :role
      t.integer :gradeTaught
      t.string :email

      t.timestamps
    end
  end
end
