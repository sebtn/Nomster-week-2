class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@photo = Place.find(params[:place_id])
		uploader = PictureUploader
		redirect_to place_path(@photo)
	end	

	private

	def photo_params
		params.require(:photo).permit(:caption, :picture, :place_id)
	end	
end

