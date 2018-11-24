class CreateBehaviors < ActiveRecord::Migration[5.2]
  def change
    create_table :behaviors do |t|
      t.integer :student_id
      t.date :event_date
      t.time :event_time
      t.integer :grade
      t.integer :staff_id
      t.string :location
      t.string :minor_behavior
      t.string :major_behavior
      t.string :motivation
      t.string :admin_action
      t.boolean :time_in_office
      t.boolean :loss_privilege
      t.boolean :conference_with_student
      t.boolean :parent_contact
      t.boolean :time_out_detention
      t.boolean :restitution_community_service
      t.boolean :individualized_instruction
      t.boolean :counselor
      t.boolean :in_school_suspension
      t.boolean :out_school_suspension
      t.boolean :expulsion
      t.boolean :involved_none
      t.boolean :involved_peers
      t.boolean :involved_staff
      t.boolean :involved_teacher
      t.boolean :involved_substitute
      t.string :peers_involved
      t.string :staff_involved
      t.string :teachers_involved
      t.string :subsitutes_involved
      t.string :antecedent
      t.string :behavior_description
      t.string :due_process
      t.string :minor_other
      t.string :major_other

      t.timestamps
    end
  end
end
