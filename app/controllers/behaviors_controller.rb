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
		params.require(:behavior)
		.permit(:student_id, :event_date, :event_time, :locaton, :peers_involved, :staff_id, :get_peer_attention, :get_adult_attention, :get_items_activities, :avoid_task, :avoid_peer, :avoid_adult,:motivation,:minor_language,:minor_contact,:minor_defiance, :minor_disruption,:minor_property,:minor_dress,:minor_technology,:minor_tardy, :minor_other,:major_language,:major_aggression,:major_disrespect,:major_habitual_disruption,:major_dishonesty, :major_harrassment,:major_tardies,:major_vandalism,:major_theft,:major_dress_code, :major_drugs,:major_weapons,:major_other,:antecedent,:behavior_description,:due_process,:admin_time_office,:admin_loss_privilege,:admin_conference_student,:admin_parent_contact,:admin_detention,:admin_service,:admin_individual_instruction,:admin_counselor,:admin_in_school_suspension,:admin_suspension,:admin_expulsion,:admin_other)
		end
end
