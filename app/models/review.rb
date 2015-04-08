class Review < ActiveRecord::Base
	belongs_to :Post

	before_create :initialize_like

	def initialize_like
	 	if self.like == nil
	 		self.like = 0
	 	end
	end
end
