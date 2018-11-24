class AddMinorOtherToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_other, :string
  end
end
