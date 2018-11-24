class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :fName
      t.string :lName
      t.string :mName
      t.string :role
      t.integer :gradeTaught
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
