class Test < ApplicationRecord

	

  	def student_name
		# check if there is a student id
		if student_id
			Student.find(student_id).full_name_last
		else
			"unknown"
		end

	end

	

end
