class AddStaffNameToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :staff_name, :string
  end
end
