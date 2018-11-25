class AddMinorDisruptionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_disruption, :boolean
  end
end
