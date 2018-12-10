class Behavior < ApplicationRecord
	has_one :student
	
	def readable_time
		event_time.strftime("%I:%M%p")  
	end

	def student_name
		# check if there is a student id
		if student_id
			# is it valid?
			begin
				Student.find(student_id).full_name_last
			rescue Exception => e
				"unknown"
			end
			
		else
			"unknown"
		end

	end

	def staff_name
		# check if there is a student id
		if staff_id
			Staff.find(staff_id).full_name_last
		else
			"unknown"
		end

	end

	


end
