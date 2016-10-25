class SessionsController < ApplicationController
  def new
  end

  def create
    assign
    if !session[:name] || session[:name] == ""
      redirect_to '/login'
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end
end
