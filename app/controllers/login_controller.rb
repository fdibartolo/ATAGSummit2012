class LoginController < ApplicationController
  def login
  end

	def signin
		@author = Author.find_by_username params[:username]
		if @author.nil?
			redirect_to login_path, :notice => "Username not found!"
		else
			session[:author_id] = @author.id
			redirect_to root_path
		end
	end

  def signup
		@author = Author.new
  end

	def register
		@author = Author.new(params[:author])

		if @author.save
			render :login
		else
			render :signup
		end
	end

	def logout
		session[:author_id] = nil
		redirect_to root_path
	end
end
