class AddMinorLanguageToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :minor_language, :boolean
  end
end
