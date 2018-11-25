class AddMinorTardyToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_tardy, :boolean
  end
end
