class ApplicationController < ActionController::Base
	#rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  	private

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def current_user
      if session[:staff_id]
        @current_user ||= Staff.find_by(id: session[:staff_id])
      end
    end

    def logged_in?
      !current_user.nil?
    end

  	def record_not_found
    	#redirect_to action: :index
  	end
end
