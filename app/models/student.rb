class Student < ApplicationRecord
	has_many :behavior
	def full_name
		"#{fName} #{lName}"
	end

	def full_name_last
		"#{lName}, #{fName}"
	end
	def full_name_last_grade
		"#{lName}, #{fName} -#{grade}"
	end
end
