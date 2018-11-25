class AddAdminInSchoolSuspensionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_in_school_suspension, :boolean
  end
end
