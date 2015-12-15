class ProfilesController < ApplicationController

	def show
		 @users = User.find(params[:id])
	end

	def index
		@users = User.all
	end
	def index
	  # generates an array of all users in our database
	  # stores that array in the @users instance variable
	  @users = User.all
	end

	def show
	   # sets @user variable to id of the requested user
	   @user = User.find(params[:id])
	end
end
