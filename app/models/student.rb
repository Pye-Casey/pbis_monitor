class Student < ApplicationRecord
	has_many :behavior

	validates :fName,				presence: true, length: { maximum: 20 }
  validates :lName, 			presence: true, length: { maximum: 20 }
  validates :grade, 			presence: true

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
