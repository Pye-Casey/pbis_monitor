class AddMinorDefianceToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_defiance, :boolean
  end
end
