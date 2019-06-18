class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if !user || !user.authenticate(params[:session][:password])
      flash[:errors] = ["Credentials aren't valid"]
      redirect_to pages_path
    else
      session[:user_id] = user.id
      redirect_to pages_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end
