class UsersController < ApplicationController
	def new
		@user = User.new
	end

	private
	def users_params
		params.require(:user).permit(:username, :email, :password)
	end
end
