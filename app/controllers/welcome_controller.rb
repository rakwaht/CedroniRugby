class WelcomeController < ApplicationController
	
	def index
		@max_news_onindex = 6
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
		@year = params[:year] ? params[:year] : 2015
		@placement = Teams.where(:year => @year).order("point DESC")
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
		#@all_news = News.all(:order => "created_at DESC")
		@news2015 = News.where(:year => [2015]).order("created_at DESC")
		@news2014 = News.where(:year => [2014, nil]).order("created_at DESC")
		@news2013 = News.where(:year => 2013).order("created_at DESC")
		@all_album = Album.all(:order => "created_at DESC")
		@placement2013 = Teams.where(:year => 2013).order("point DESC")
		@placement2014 = Teams.where(:year => 2014).order("point DESC")
		@placement2015 = Teams.where(:year => 2015).order("point DESC")
	end

	def galleria
		@all_album = Album.all(:order => "created_at DESC")
	end

end
