class AddAdminIndividualInstructionToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_individual_instruction, :boolean
  end
end
