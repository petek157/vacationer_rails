class Admin::AccessController < AdminApplicationController
  layout "admin_access"

  def login
    # login
    if session[:user_id] != nil
      redirect_to(admin_sliders_path) #change to reservations. Admin gets all, user only gets theirs
    end
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = User.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to(admin_sliders_path) #change to reservations. Admin gets all, user only gets theirs
    else
      flash.now[:alert] = "Username password combo does not match"
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(admin_access_login_path)
  end
end
