class AddAvoidPeerToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :avoid_peer, :boolean
  end
end
