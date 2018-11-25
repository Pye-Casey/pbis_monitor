class AddAdminDetentionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_detention, :boolean
  end
end
