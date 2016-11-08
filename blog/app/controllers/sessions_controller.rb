class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:new, :create, :delete]
  def new
  end

  def create
  	user = User.find_by(username: params[:session][:username])
  	if user.try(:authenticate, params[:session][:password])
  		log_in(user)
  		redirect_to root_url
  	else
  		redirect_to login_url, alert: "Invalid user/password."
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url, notice: "Logged out"
  end
end
