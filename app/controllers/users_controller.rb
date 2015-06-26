class UsersController < ApplicationController
	def create
	end
	
	## 
	# this method is for under construction page. it adds
	# the user to the db with only an email address 
	##
	def email_signup
		@new_user = User.new(user_params)
		begin
			@new_user.save
			redirect_to thank_you_url 
		rescue 
			flash.now[:errors] = ["This email has already been registered."]
			render "static_pages/root"
		end
	end

	def user_params
		params.require(:user).permit(:full_name, :email, :username)
	end
end
