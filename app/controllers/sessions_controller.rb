class SessionsController < ApplicationController

  def index

  end

  def new
      
  end

  def create
    staff = Staff.find_by(email: params[:session][:email].downcase)
    if staff && staff.authenticate(params[:session][:password])
      log_in staff
      redirect_to admin_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end

  def log_in(staff)
    session[:staff_id] = staff.id
  end

  def current_user
    if session[:staff_id]
      @current_user ||= Staff.find_by(id: session[:staff_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:staff_id)
    @current_user = nil
  end

end
