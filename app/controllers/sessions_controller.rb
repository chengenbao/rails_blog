class SessionsController < ApplicationController
  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to articles_path, :notice => 'Logged in seccessfully'
    else
      flash.now[:alert] = 'Invalid username/password combination'
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path, :notice => 'You seccessfully logged out'
  end
end
