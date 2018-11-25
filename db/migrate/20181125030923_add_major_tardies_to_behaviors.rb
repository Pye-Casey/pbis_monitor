class AddMajorTardiesToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_tardies, :boolean
  end
end
