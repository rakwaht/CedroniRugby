class NewsController < ApplicationController

	def new
	end

	def create
		@news = News.new(params[:news])
    	if @news.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to action: :new
    	end
	end

	def archive
		@topic = params[:topic]
		@all_news = News.all(:order => "created_at DESC")
		@news_maschile = News.where(:topic => "Maschile");
		@news_femminile = News.where(:topic => "Femminile");
		@news_societa = News.where(:topic => "Societa");
	end

	def edit
		@news = News.find(params[:news_id])
		@news.destroy
	end

	def delete
		@news = News.find(params[:news_id])
		@news.destroy
		redirect_to controller: :welcome, action: :admin
	end

	def show
		@news = News.find(params[:news_id]);
	end

end
