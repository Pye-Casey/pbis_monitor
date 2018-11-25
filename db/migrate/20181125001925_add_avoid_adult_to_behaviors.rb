class AddAvoidAdultToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :avoid_adult, :boolean
  end
end
