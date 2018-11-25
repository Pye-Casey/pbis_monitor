class Behavior < ApplicationRecord
	has_one :student

	def readable_time
		event_time.strftime("%I:%M%p")  
	end

	def student_name
		student = Student.find(student_id)
		student_name = student.full_name_last
	end

end
