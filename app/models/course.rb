class Course < ActiveRecord::Base
	belongs_to :user
	has_many :assignments
	has_many :comments
end
