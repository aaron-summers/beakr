# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    if !params[:name] || params[:name].empty?
      return redirect_to(controller: 'sessions',
                         action: 'new')
    end
    session[:name] = params[:name]
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      redirect_to controller: 'application', action: 'hello'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end
