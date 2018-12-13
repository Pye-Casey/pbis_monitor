class StaffsController < ApplicationController

	before_action :logged_in_user
	#before_action :no_edit, only: [:edit]

	def index
		@staffs = Staff.order(id: :asc)
	end

	def show
		@staff = Staff.find(params[:id])
	end

	def new
		@staff = Staff.new
	end

	def edit
		@staff = Staff.find(params[:id])
	end

	def create
		@staff = Staff.new(staff_params)

		if @staff.save
			flash[:success] = "New Staff Member Added!"
			redirect_to admin_path
		else
			render 'new'
		end

		/@staff.save

		redirect_to @staff/
	end

	def update
		@staff = Staff.find(params[:id])
		if @staff.update(staff_params)
			flash[:success] = "Staff Member Updated!"
			redirect_to staffs_path
		else
			render 'edit'
		end
	end

	def destroy
	  @staff = Staff.find(params[:id])
	  @staff.destroy
	  redirect_to staffs_path
	end

	private
	def staff_params
		params.require(:staff).permit(:fName, :lName, :gradeTaught, :email,
																:password, :password_confirmation)
	end

	def no_edit
		@staff = Staff.find(params[:id])
		@current_user ||= Staff.find_by(id: session[:staff_id])
		if @staff != @current_user
			flash[:danger] = "You may not edit another user"
			redirect_to staffs_path
		end
	end


end
