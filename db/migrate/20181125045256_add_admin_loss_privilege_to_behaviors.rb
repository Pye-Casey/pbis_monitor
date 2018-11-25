class AddAdminLossPrivilegeToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_loss_privilege, :boolean
  end
end
