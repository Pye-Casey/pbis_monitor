class AdminController < ApplicationController

  before_action :logged_in_user
  
  def index
  	@students = Student.all
  	@behavior = Behavior.all
  	@recentEvents = Behavior.order(:event_date, :event_time).where(event_date: 1.week.ago..Date.today).limit(10)

  	@eventsByDay = Behavior.group_by_day(:event_date).count
  	@highFlierCnt = Behavior.select('distinct student_id').count
  	@highFliers = Behavior.select(:student_id, 'COUNT(*) as count').group(:student_id).where('student_id IS NOT NULL').order('count')
    #@highFliers = Behavior.select(:student_id,'COUNT(*) as count', 'student_name').group(:student_id, :student_name).where('student_name IS NOT NULL').order('count')
  	@weekData = Behavior.select(:event_date, 'COUNT(*) as count').group(:event_date).where(event_date: 1.week.ago..Date.today)
  	@monthData = Behavior.select(:event_date, 'COUNT(*) as count').group(:event_date).where(event_date: 1.month.ago..Date.today)

  	@weekDataTest = Behavior.select('event_date, COUNT(*) as count').group(:event_date)

  end
end
