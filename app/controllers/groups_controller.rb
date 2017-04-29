class GroupsController < ApplicationController

def new
	@group=Group.new
end

def create

	@group=current_user.groups.new(group_params)
	@mem = current_user.members.create(user_id: current_user, group_id: @group.id)
		
	if @group.save  
		redirect_to @group
	else
		render 'new'
	end
end

def show
	@group=Group.find(params[:id])
end		

private
	def group_params
		params.require(:group).permit(:type,:name, :user_id)
	end 

	def mem_params
		params.require(:member).permit(:user_id => current_user, :group_id => params[:id])
	end

end
