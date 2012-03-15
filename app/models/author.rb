class Author < ActiveRecord::Base
	has_many :articles

	validates :username, presence: true, uniqueness: true
	validates :first_name, presence: true
end
