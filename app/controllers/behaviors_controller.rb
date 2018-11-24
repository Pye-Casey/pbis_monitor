class BehaviorsController < ApplicationController
  def index
		@behavior = Behavior.all
	end
  
	def show
		@behavior = Behavior.find(params[:id])
	end
	
	def new
		@behavior = Behavior.new
	end
	
	def edit
		@behavior = Behavior.find(params[:id])
	end
	
	def create
		@behavior = Behavior.new(behavior_params)
		
		if @behavior.save
			redirect_to @behavior
		else
			render 'new'
		end
		
		/@behavior.save

		redirect_to @behavior/
	end
	
	def update
		@behavior = Behavior.find(params[:id])
		if @behavior.update(behavior_params)
			redirect_to @behavior
		else
			render 'edit'
		end
	end
	
	def destroy
	  @behavior = Behavior.find(params[:id])
	  @behavior.destroy
	  redirect_to behaviors_path
	end
	
	private
	def behavior_params 
		#params.require(:behavior).permit(:fName, :lName)
	end
end
