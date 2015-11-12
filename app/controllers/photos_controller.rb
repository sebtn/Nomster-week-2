class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Photo.find(params[:place_id])
		uploader = PictureUploader
		redirect_to place_path(@place)
	end	

	private

	def photo_params
		params.require(:photo).permit(:caption)
	end	
end

