class AddMinorDressToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_dress, :boolean
  end
end
