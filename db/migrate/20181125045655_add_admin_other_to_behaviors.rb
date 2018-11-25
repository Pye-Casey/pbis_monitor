class AddAdminOtherToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_other, :string
  end
end
