class TestController < ApplicationController
  def index
  	@students = Student.all
  	@behavior = Behavior.all
  	@recentEvents = Behavior.order(:event_date, :event_time).where(event_date: 1.week.ago..Date.today)

  	@eventsByDay = Behavior.group_by_day(:event_date).count

  	@highFliers = Behavior.order(:event_date, :event_time).where(event_date: 1.week.ago..Date.today)
  end
end
