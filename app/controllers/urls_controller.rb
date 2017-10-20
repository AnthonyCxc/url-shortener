class UrlsController < ApplicationController
	def index
		@title = "Checkmate friend"
		@urls =Url.all
	end

	def show
   @urls = Url.find_by(params[:id])
	end

	def new
    @urls = Url.new
	end

	def create
		# byebug
    @urls = Url.new(url_params)
    @urls.shorten
  if @urls.save
      redirect_to @url  
  else
      render 'new'
      # ActiveModel::ForbiddenAttributesError means require strong params
  end   
end
  def destroy
    @urls = Url.find_by(params[:id])
    @urls.destroy
    redirect_to root_path
end

private 
def url_params
    params.require(:url).permit(:long_url)
end

end
