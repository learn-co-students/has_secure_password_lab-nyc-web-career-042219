class WelcomeController < ApplicationController

	def welcome
		session[:user_id] ? @user = User.find_by(id: session[:user_id]) : redirect_to(controller: 'users', action: 'new')
	end

end