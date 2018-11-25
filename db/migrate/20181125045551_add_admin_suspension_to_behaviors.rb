class AddAdminSuspensionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_suspension, :boolean
  end
end
