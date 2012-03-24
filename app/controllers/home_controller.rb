class HomeController < ApplicationController
  def index
		@articles = Article.order("created_at DESC")
  end

	def show
		@article = Article.find(params[:id])

		save_hit params[:id]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
	end

	private
	def save_hit article_id
		@hit = Hit.new(:article_id => article_id, :author_id => 0)
		#author_id equals 0 means a hit from a guest
		@hit.author_id = session[:author_id] if session[:author_id]
		@hit.save
	end
end
