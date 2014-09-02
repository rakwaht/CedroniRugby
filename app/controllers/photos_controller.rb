class PhotosController < ApplicationController
    
    before_filter :logged	

	def new
		@album=Album.find(params[:album_id])
	end

	def delete
		@photo = Photo.find(params[:photos_id])
		if @photo.destroy
      		redirect_to controller: :albums, action: :show_admin, :album_id => @photo.album_id
      	else 
      		redirect_to controller: :photos, action: :new, :album_id => @photo.album_id
    	end
	end

	def create
		@album = Album.find(params[:album_id])
		@photo = @album.photos.new(params[:photo])
		if @photo.save
      		redirect_to controller: :albums, action: :show_admin, :album_id => @album.id
    	else 
      		redirect_to controller: :photos, action: :new, :album_id => @album.id
    	end
	end
end
