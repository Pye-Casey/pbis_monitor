class AddMajorAggressionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_aggression, :boolean
  end
end
