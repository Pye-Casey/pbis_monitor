class AddMajorDishonestyToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_dishonesty, :boolean
  end
end
