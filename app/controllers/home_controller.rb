class HomeController < ApplicationController
  def index
		@articles = Article.order("created_at DESC")
  end

	def show
		@article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
	end
end
