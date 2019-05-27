class SessionsController < ApplicationController

	def new

	end

	def create
		@user = User.find_by(name: params[:user][:name])
		# user.try(:authenticate, params[:user][:password])
		return redirect_to(controller: 'users', action: 'new') unless @user.authenticate(params[:user][:password])
		session[:user_id] = @user.id 
		redirect_to controller: 'welcome', action: 'welcome'
	end
end