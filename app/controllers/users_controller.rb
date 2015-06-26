class UsersController < ApplicationController
	def create
	end
	
	## 
	# this method is for under construction page. it adds
	# the user to the db with only an email address 
	##
	def email_signup
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to thank_you_url 
		else
			flash.now[:errors] = @new_user.errors.full_messages
			render :root
		end
	end

	def user_params
		params.require(:user).permit(:full_name, :email, :username)
	end
end
