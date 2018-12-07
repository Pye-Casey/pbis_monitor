class TestController < ApplicationController
  def index
  	@students = Student.all
  	@behavior = Behavior.all
  	
  end
end
