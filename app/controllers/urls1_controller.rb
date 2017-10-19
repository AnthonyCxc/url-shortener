class Urls1Controller < ApplicationController
	def index
		@title = "Checkmate friend"
		@urls1 =Url1.all
	end
end
