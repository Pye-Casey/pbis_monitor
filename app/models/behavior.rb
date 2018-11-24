class Behavior < ApplicationRecord
	def readable_time
		event_time.strftime("%I:%M%p")  
	end
end
