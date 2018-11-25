class AddMajorHabitualDisruptionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_habitual_disruption, :boolean
  end
end
