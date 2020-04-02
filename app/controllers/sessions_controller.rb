class SessionsController < ApplicationController
	def home
	end 

	def create
		binding.pry

		user  = User.find_by(params[:user][:username])
	
		# if user && user.authenticate(params[:user][:password])
		# 	session[:user_id] = user.id 
		# 	redirect_to user_path(user)
		# else
		# 	# flash[:message] = "Incorrect login info, please try again "
		# 	redirect_to logout_path
		# end
	end 

	def destroy
		session.clear
		redirect_to login_path
	end 
end
