class Behavior < ApplicationRecord
	has_one :student

	def readable_time
		event_time.strftime("%I:%M%p")  
	end

	def student_name
		Student.where(id: @behavior.student_id)
	end

end
