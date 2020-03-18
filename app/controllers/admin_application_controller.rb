class AdminApplicationController < ApplicationController

    before_action :confirmed_logged_in, :except => [:login, :attempt_login, :logout]

  private

  def confirmed_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in"
      redirect_to(admin_access_login_path)
    else
      @user = User.find(session[:user_id])
    end
  end

end