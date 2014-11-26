class NewsController < ApplicationController
	before_filter :logged, :except => [ :archive, :show ]

	def new
	end

	def create
		@news = News.new(params[:news])
    	if @news.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to controller: :news,action: :new
    	end
	end

	def archive
		@topic = params[:topic]
		@year = params[:year]
		@year = @year ? @year : 2014
		@all_news = News.where(:year => @year).order("created_at DESC")
		@news_maschile = News.where(:topic => "Maschile").where(:year => @year).order("created_at DESC")
		@news_femminile = News.where(:topic => "Femminile").where(:year => @year).order("created_at DESC")
		@news_societa = News.where(:topic => "Societa").where(:year => @year).order("created_at DESC")
	end

	def edit
		@news = News.find(params[:news_id])
	end

	def edit_confirm
		@old =  News.find(params[:news_id])
		@news = News.new(params[:news])
		@old.update_attributes(:body => @news.body, :title => @news.title, 
			:image_url => @news.image_url, 
			:year => @news.year ? @news.year : 2014,
			:topic => @news.topic)
    	if @old.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to controller: :news,action: :new
    	end
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
