class SessionsController < ApplicationController
	
	def create
		@user = User.find_by_name(params[:user][:name])
		if @user && @user.authenticate(params[:user][:password])
			session[:log] = @user.password_digest
			redirect_to controller: :welcome, action: :admin 
		else
			redirect_to controller: :sessions, action: 'login'
		end
	end

	def login
	end

	def logout
		session.delete(:log)
		redirect_to root_url
	end

end
