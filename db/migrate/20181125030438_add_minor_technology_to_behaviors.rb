class AddMinorTechnologyToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_technology, :boolean
  end
end
