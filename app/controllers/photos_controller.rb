class PhotosController < ApplicationController
	def new
		@album=Album.find(params[:album_id])
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
