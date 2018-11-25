class AddAdminServiceToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_service, :boolean
  end
end
