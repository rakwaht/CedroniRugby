class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :logged, only: :admin
  
  def logged
  	if session[:log] != User.first.password_digest
  		redirect_to root_url
  	end
  end

end
