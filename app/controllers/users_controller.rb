class UsersController < ApplicationController

def create
	@user= User.new
	
	if @user.save
			redirect_to @user
	else
		render nothing: true
	end
  end
end



		