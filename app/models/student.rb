class Student < ApplicationRecord
	def full_name
		"#{fName} #{lName}"
	end

	def full_name_last
		"#{lName}, #{fName}"
	end
end
