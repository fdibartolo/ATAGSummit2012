module ApplicationHelper
	def loggedin_author?
		@loggedin_author = Author.find(session[:author_id]) if session[:author_id]
		not @loggedin_author.nil?
	end
end
