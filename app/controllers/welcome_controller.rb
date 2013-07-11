class WelcomeController < ApplicationController
	
	def index
		@all_news = News.find(:all, :order => "created_at DESC", :limit => 3)
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
		@all_news = News.all(:order => "created_at DESC")
		@all_album = Album.all(:order => "created_at DESC")
	end

	def galleria
		@all_album = Album.all(:order => "created_at DESC")
	end

	def left
		respond_to do |format|
      		format.js {render action: :next}
    	end
	end

	def right
		respond_to do |format|
      		format.js {render action: :prew}
    	end
	end

end
