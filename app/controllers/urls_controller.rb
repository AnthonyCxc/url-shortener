class UrlsController < ApplicationController
	def index
		@title = "Checkmate friend"
		@urls =Url.all
	end
end
