class Post < ActiveRecord::Base
	has_many :reviews
	belongs_to :User
	before_create :initialize_like

	def initialize_like
	 	if self.like == nil
	 		self.like = 0
	 	end
	end
end
