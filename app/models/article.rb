class Article < ActiveRecord::Base
	belongs_to :author
	has_and_belongs_to_many :categories

	validates :title, presence: true
	validates :body, presence: true
end
