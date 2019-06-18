class SessionsController < ApplicationController
  def new
  end

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


  def destroy
    session.delete :user_id
    redirect_to login_path
  end
end

# class SessionsController < ApplicationController
#   def new
#   end
#
#   def create
#     return redirect_to(controller: 'sessions',
#                        action: 'new') if !params[:name] || params[:name].empty?
#     session[:name] = params[:name]
#     user = User.find_by(email: params[:session][:email].downcase)
#     if user && user.authenticate(params[:session][:password])
#     redirect_to controller: 'application', action: 'hello'
#     else
#       flash.now[:danger] = 'Invalid email/password combination'
#       render 'new'
#     end
#   end
#
#   def current_user
#     if session[:user_id]
#       @current_user ||= User.find_by(id: session[:user_id])
#     end
#   end
#
#   def destroy
#     session.delete :name
#     redirect_to controller: 'application', action: 'hello'
#   end
# end
