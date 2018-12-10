class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def create
		@student = Student.new(student_params)

		if @student.save
			flash[:success] = "New Student Added!"
			redirect_to admin_path
		else
			render 'new'
		end
		/@student.save
		redirect_to @student/
	end

	def update
		@student = Student.find(params[:id])
		if @student.update(student_params)
			flash[:success] = "Student Updated!"
			redirect_to admin_path
		else
			render 'edit'
		end
	end

	def destroy
	  @student = Student.find(params[:id])
	  @student.destroy
	  redirect_to students_path
	end

	private
	def student_params
		params.require(:student).permit(:fName, :lName, :grade, :homeroom_teacher)
	end
end
