class Staff < ApplicationRecord
	def full_name_last
		"#{lName}, #{fName}"
	end
	def staff_member_info
		"#{lName}, #{fName} - Grade:#{gradeTaught}"
	end

end
