class AddMajorVandalismToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_vandalism, :boolean
  end
end
