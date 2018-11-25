class AddMajorLanguageToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :major_language, :boolean
  end
end
