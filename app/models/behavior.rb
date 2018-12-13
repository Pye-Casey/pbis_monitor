class Behavior < ApplicationRecord
	has_one :student
	
	def readable_time
		event_time.strftime("%I:%M%p")  
	end

	

	

	


end
