class Assignment < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	has_many :comments
end




