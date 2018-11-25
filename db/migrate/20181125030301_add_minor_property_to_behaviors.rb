class AddMinorPropertyToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_property, :boolean
  end
end
