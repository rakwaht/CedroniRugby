class WelcomeController < ApplicationController
	
	def index
		@max_news_onindex = 2
		@all_news = News.find(:all, :order => "created_at DESC", :limit => @max_news_onindex)
	end

	#def moreNews
	#	@actual = params[:news_number]
	#	@other_news = News.order('created_at DESC').limit(6).offset(@actual)
	#	respond_to do |format|
    # 		format.js {render action: :load_news}
    #	end
	#end

	def result
		@placement = Teams.find(:all, :order => "point DESC")
	end

	def societa
	end

	def maschile
	end

	def femminile
	end

	def contatti
	end

	def gioca
	end

	def admin
		@admin = User.find_by_password_digest(session[:log])
		@all_news = News.all(:order => "created_at DESC")
		@all_album = Album.all(:order => "created_at DESC")
		@placement = Teams.find(:all, :order => "point DESC")
	end

	def galleria
		@all_album = Album.all(:order => "created_at DESC")
	end

end
