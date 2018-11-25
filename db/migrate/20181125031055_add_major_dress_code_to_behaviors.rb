class AddMajorDressCodeToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_dress_code, :boolean
  end
end
