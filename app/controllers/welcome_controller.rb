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
end
