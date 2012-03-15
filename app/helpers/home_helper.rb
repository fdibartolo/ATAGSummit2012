module HomeHelper
	def get_formatted_author_for article
		@author = Author.find(article.author_id) if article.author_id
		"by #{@author.first_name} #{@author.last_name}"	
	end
end
