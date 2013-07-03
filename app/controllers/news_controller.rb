class NewsController < ApplicationController

	def new
	end

	def create
		@news = News.new(params[:news])
    	if @news.save
      		redirect_to controller: :news, action: :show
    	else 
      		redirect_to action: :new
    	end
	end

	def archive
		@all_news = News.all(:order => "created_at DESC")
	end

	def edit
		@news = News.find(params[:news_id])
		@news.destroy
	end

	def delete
		@news = News.find(params[:news_id])
		@news.destroy
		redirect_to controller: :news, action: :show
	end

	def show
		@news = News.find(params[:news_id]);
	end

end
