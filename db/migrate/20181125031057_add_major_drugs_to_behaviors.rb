class AddMajorDrugsToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_drugs, :boolean
  end
end
