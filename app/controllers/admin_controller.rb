class AdminController < ApplicationController
  def index
  	@students = Student.all
  	@behavior = Behavior.all
  	@recentEvents = Behavior.order(:event_date, :event_time).where(event_date: 1.week.ago..Date.today).limit(10)

  	@eventsByDay = Behavior.group_by_day(:event_date).count
  	@highFlierCnt = Behavior.select('distinct student_id').count
  	@highFliers = Behavior.select(:student_id, 'COUNT(*) as count').group(:student_id).where('student_id IS NOT NULL').order('count')
  end
end
