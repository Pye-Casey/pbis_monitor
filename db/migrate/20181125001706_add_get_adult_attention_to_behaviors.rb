class AddGetAdultAttentionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :get_adult_attention, :boolean
  end
end
