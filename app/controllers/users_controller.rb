class UsersController < ApplicationController
	def create
	end

	def user_params
		params.require(:user).permit(:full_name, :email, :username)
	end
end
