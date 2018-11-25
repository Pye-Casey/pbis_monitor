class AddAdminTimeOfficeToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_time_office, :boolean
  end
end
