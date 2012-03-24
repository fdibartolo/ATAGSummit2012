class Article < ActiveRecord::Base
	belongs_to :author
	has_and_belongs_to_many :categories
	has_many :hits

	validates :title, presence: true
	validates :body, presence: true
end
