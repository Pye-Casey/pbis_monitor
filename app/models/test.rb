class Test < ApplicationRecord
	has_many: behavior
	has_many: students
#	@behavior = Behavior.find(:all).all? { |e|  }
	test_behavior = Behavior.find(0)
	@behavior = Behavior.all? { |e|  }

end
