class AddGetItemsActivitiesToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :get_items_activities, :boolean
  end
end
