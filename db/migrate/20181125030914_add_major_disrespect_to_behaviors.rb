class AddMajorDisrespectToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_disrespect, :boolean
  end
end
