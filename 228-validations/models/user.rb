class User < ActiveRecord::Base
	validates :email, presence: {message: "not valid"}
end
