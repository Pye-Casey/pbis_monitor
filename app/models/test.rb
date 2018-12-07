class Test < ApplicationRecord
	
	@recentEvents = Behavior.order(:event_date, :event_time).where(event_date: 1.week.ago..Date.today).limit(10)

  	@eventsByDay = Behavior.group_by_day(:event_date).count

  	def student_name
		# check if there is a student id
		if student_id
			Student.find(student_id).full_name_last
		else
			"unknown"
		end

	end

  	@highFliers = Behavior.count('student_id', :distinct => true)

end
