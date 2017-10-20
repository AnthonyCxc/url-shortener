class UrlsController < ApplicationController
	def index
		@title = "Checkmate friend"
		@urls =Url.all
	end

	def show
   @urls = Url.find_by(params[:id])
	end
end
