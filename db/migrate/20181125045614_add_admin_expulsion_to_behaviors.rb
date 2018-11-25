class AddAdminExpulsionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_expulsion, :boolean
  end
end
