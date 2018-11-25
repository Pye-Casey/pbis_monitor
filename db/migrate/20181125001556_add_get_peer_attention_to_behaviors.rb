class AddGetPeerAttentionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :get_peer_attention, :boolean
  end
end
