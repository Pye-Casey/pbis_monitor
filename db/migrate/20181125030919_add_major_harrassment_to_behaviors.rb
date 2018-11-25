class AddMajorHarrassmentToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_harrassment, :boolean
  end
end
