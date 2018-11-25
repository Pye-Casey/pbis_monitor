class AddAdminCounselorToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_counselor, :boolean
  end
end
