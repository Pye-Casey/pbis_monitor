class AddAdminConferenceStudentToBehaviors < ActiveRecord::Migration[5.2]
  def change
    add_column :behaviors, :admin_conference_student, :boolean
  end
end
