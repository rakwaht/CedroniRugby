class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :logged, only: :admin
  
  def logged
  	@user = User.find_by_password_digest(session[:log])
  	if !@user
  		redirect_to controller: :sessions, action: 'login'
  	end
  	#if session[:log] != User.first.password_digest
  	#	redirect_to controller: :sessions, action: 'login'
  	#end
  end

end
