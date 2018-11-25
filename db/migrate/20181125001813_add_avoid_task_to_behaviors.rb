class AddAvoidTaskToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :avoid_task, :boolean
  end
end
