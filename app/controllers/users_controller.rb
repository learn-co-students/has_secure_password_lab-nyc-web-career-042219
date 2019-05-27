class UsersController < ApplicationController

	def new
	end

	def create
		@user = User.create(user_params)
		session[:user_id] = @user.id
		redirect_to controller: 'welcome', action: 'welcome'
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path
	end

	private

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end
