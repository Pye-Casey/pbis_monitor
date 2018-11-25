class AddMajorWeaponsToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_weapons, :boolean
  end
end
