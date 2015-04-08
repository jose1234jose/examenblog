class User < ActiveRecord::Base
	has_many :Posts
end
