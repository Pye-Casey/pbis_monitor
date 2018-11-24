class AddMajorOtherToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_other, :string
  end
end
