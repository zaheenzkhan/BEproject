class MembersController < ApplicationController

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(mem_params)
		@member.save
	end
	private

	def mem_params
		params.require(:member).permit(:user_id, :group_id)
	end

end