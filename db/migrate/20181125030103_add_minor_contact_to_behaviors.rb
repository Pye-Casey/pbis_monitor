class AddMinorContactToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_contact, :boolean
  end
end
