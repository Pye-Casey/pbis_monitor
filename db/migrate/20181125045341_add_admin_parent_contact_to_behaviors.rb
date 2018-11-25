class AddAdminParentContactToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_parent_contact, :boolean
  end
end
