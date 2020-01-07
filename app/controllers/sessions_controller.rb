class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil?
      redirect_to "/login"
    elsif params[:name]==""
      redirect_to "/login"
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

end

# solution code:
# def create
#     return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
#     session[:name] = params[:name]
#     redirect_to controller: 'application', action: 'hello'
#   end
#
#   def destroy
#     session.delete :name
#     redirect_to controller: 'application', action: 'hello'
#   end
