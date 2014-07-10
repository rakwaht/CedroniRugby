class AlbumsController < ApplicationController
  	before_filter :logged, :except => [ :show ]	

	def new
	end

	def create
		@album = Album.new(params[:album])
    	if @album.save
      		redirect_to controller: :welcome, action: :admin
    	else 
      		redirect_to controller: :albums,action: :new
    	end
	end

	def show_admin
		@album = Album.find(params[:album_id])
	end

	def show
		@album = Album.find(params[:album_id])
	end

	def delete
		@album = Album.find(params[:album_id])
		@album.destroy
		redirect_to controller: :welcome, action: :admin
	end

end
