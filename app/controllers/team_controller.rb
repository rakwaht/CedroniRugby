class TeamController < ApplicationController
	before_filter :logged	
	
	def new
	end

	def create
		@team = Teams.new(params[:team])
    	if @team.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to controller: :team,action: :new
    	end
	end

	def delete
		@team = Teams.find(params[:team_id])
		@team.destroy
		redirect_to controller: :welcome, action: :admin
	end

	def edit
		@team = Teams.find(params[:team_id])
	end

	def edit_confirm
		@old = Teams.find(params[:team_id])
		@old.destroy 
		@team = Teams.new(params[:team])
    	if @team.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to controller: :team, action: :new
    	end
	end

end
